#!/usr/bin/env python3
"""Build the library, check source/audit coverage, and inspect kernel axiom reports."""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FORBIDDEN = re.compile(r"\b(sorry|admit|axiom|native_decide|unsafe|implemented_by)\b")


def code_only(text: str) -> str:
    """Mask nested Lean comments and strings, preserving line numbers."""
    out = list(text)
    i, depth, string = 0, 0, False
    while i < len(text):
        pair = text[i:i + 2]
        if depth:
            if pair == "/-":
                out[i:i + 2] = "  "
                depth += 1
                i += 2
            elif pair == "-/":
                out[i:i + 2] = "  "
                depth -= 1
                i += 2
            else:
                if text[i] != "\n":
                    out[i] = " "
                i += 1
        elif string:
            if text[i] == "\\" and i + 1 < len(text):
                out[i:i + 2] = "  "
                i += 2
            else:
                if text[i] == '"':
                    string = False
                if text[i] != "\n":
                    out[i] = " "
                i += 1
        elif pair == "/-":
            out[i:i + 2] = "  "
            depth = 1
            i += 2
        elif pair == "--":
            end = text.find("\n", i)
            if end < 0:
                end = len(text)
            out[i:end] = " " * (end - i)
            i = end
        elif text[i] == '"':
            out[i] = " "
            string = True
            i += 1
        else:
            i += 1
    if depth or string:
        raise ValueError("Unterminated comment or string")
    return "".join(out)


def static_checks() -> int:
    sources = sorted((ROOT / "FormalPhenomenology").rglob("*.lean"))
    if not sources:
        raise ValueError("No library sources found")
    root_source = code_only((ROOT / "FormalPhenomenology.lean").read_text(encoding="utf-8"))
    expected_modules = {".".join(p.relative_to(ROOT).with_suffix("").parts) for p in sources}
    imported_modules = set(re.findall(r"^import\s+(FormalPhenomenology\.\S+)", root_source, re.M))
    if expected_modules != imported_modules:
        raise ValueError(f"Root import mismatch: {expected_modules ^ imported_modules}")
    names: list[str] = []
    for path in sources + [ROOT / "FormalPhenomenology.lean", ROOT / "Audit.lean"]:
        code = code_only(path.read_text(encoding="utf-8"))
        if match := FORBIDDEN.search(code):
            line = code.count("\n", 0, match.start()) + 1
            raise ValueError(f"{path.relative_to(ROOT)}:{line}: forbidden token {match.group()}")
        names.extend(re.findall(r"^(?:theorem|lemma)\s+(\w+)", code, re.M))
    if len(names) != len(set(names)):
        raise ValueError("Use unique theorem names for the explicit audit ledger")
    audit = code_only((ROOT / "Audit.lean").read_text(encoding="utf-8"))
    audited = re.findall(r"^#print axioms FormalPhenomenology\.(\w+)\s*$", audit, re.M)
    if set(audited) != set(names) or len(audited) != len(names):
        raise ValueError(f"Audit coverage mismatch: {set(audited) ^ set(names)}")
    print(f"Static checks passed: {len(sources)} modules, {len(names)} audited theorems.", flush=True)
    return len(names)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--static-only", action="store_true", help="Do not invoke Lean")
    args = parser.parse_args()
    try:
        count = static_checks()
        if args.static_only:
            return 0
        subprocess.run(["lake", "build"], cwd=ROOT, check=True, timeout=600)
        result = subprocess.run(
            ["lake", "env", "lean", "Audit.lean"], cwd=ROOT,
            text=True, encoding="utf-8", capture_output=True, timeout=120,
        )
        print(result.stdout, end="")
        print(result.stderr, end="", file=sys.stderr)
        result.check_returncode()
        output = result.stdout + result.stderr
        if "depends on axioms:" in output or "sorryAx" in output:
            raise ValueError("An audited theorem depends on axioms; inspect the report")
        if output.count("does not depend on any axioms") != count:
            raise ValueError("Missing or unexpected axiom-audit output")
        print(f"Kernel audit passed: {count}/{count} theorems without axiom dependencies.")
        return 0
    except (ValueError, OSError, subprocess.SubprocessError) as error:
        print(f"Verification failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
