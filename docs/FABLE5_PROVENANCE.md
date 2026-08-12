# Fable 5 Provenance

## Verdict
Fable 5 is already fully represented in canonical `main`. There is no divergent Fable-only code to merge or cherry-pick.

## Commit chain

```text
54f5d2a9  Smali-era baseline / README
2d36584b  Flutter scaffold and SDK bridge
d504f5e8  Map, RTH, waypoint, arm/disarm
1b48cc54  Original Maps key copied
6bb1e7e2  Flutter refactor from Smali
fd834bf6  GPS and spot-lock work — Fable candidate
8d4d5ed6  Flutter app promoted to repository root
a3e55c7c  Codespaces and Round 4 review — current main
```

`fd834bf6` is a direct ancestor of `main` at `a3e55c7c`.

## What survived into main
- All 103 files under `fd834bf6:vision_minus_flutter/` have root-level counterparts after promotion.
- All 22 code files directly changed by `fd834bf6` are byte-identical in current `main`.
- Fable review and requirements documents moved into `docs/` byte-for-byte.

## Historical evidence intentionally left in Git
The `.sisyphus/` parity contracts, evidence scripts, screenshots, cross-app note, and plans remain recoverable from `fd834bf6`. They should stay pinned to that commit instead of being dumped into the active root.

## Critical caveat
Fable 5 was not hardware-verified. Historical evidence says no Android device was attached, runtime logs were not captured, requirements remained untested or failed, and the problem log includes a drone-damage incident and invalid/Africa GPS behavior.

## Reproduction

```bash
git merge-base main origin/claude/fix-ai-gps-navigation-bWTSP
git diff-tree --no-commit-id --name-status -r -M50% fd834bf6 8d4d5ed6
git show fd834bf6:.sisyphus/contracts/runtime_parity_matrix.md
git show fd834bf6:.sisyphus/evidence/cross_app_resync/20260330_121624/session_note.txt
```
