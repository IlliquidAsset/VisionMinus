# Napkin Runbook

## Curation Rules
- Re-prioritize on every read.
- Keep recurring, high-value notes only.
- Max 10 items per category.
- Each item includes date + "Do instead".

## Execution & Validation (Highest Priority)
1. **[2026-03-30] Verify behavior end-to-end, not just fixes**
   Do instead: trace user action through UI, state, platform channel, and side effects before declaring a bug fixed.

## Shell & Command Reliability
1. **[2026-03-30] Flutter toolchain depends on explicit JAVA_HOME and PATH**
   Do instead: export the requested OpenJDK 17 and Flutter bin paths in the same shell invocation before analyze or build commands.

## User Directives
1. **[2026-03-30] Safety reviews need written verification for every requested behavior**
   Do instead: document PASS/FAIL/PARTIAL for each request with code path, observed behavior, gap, and fix status.
