#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$ROOT/system" "$ROOT/memos" "$ROOT/drafts" "$ROOT/notes" "$ROOT/research" "$ROOT/projects" "$ROOT/archive" "$ROOT/logs" "$ROOT/scripts" "$ROOT/backups"

if [ ! -f "$ROOT/system/profile.md" ]; then
  cat > "$ROOT/system/profile.md" <<'EOF'
# Profile

Name: Seth Wooll

Purpose:
Durable personal and business context for AI-assisted Brillect knowledge work.

Rules:
- Keep this factual.
- Add stable information only.
- Do not store passwords, API keys, private tokens, or sensitive financial data here.
EOF
fi

if [ ! -f "$ROOT/system/preferences.md" ]; then
  cat > "$ROOT/system/preferences.md" <<'EOF'
# Preferences

Communication:
- Be direct and practical.
- Prefer step-by-step workflows.
- Challenge weak assumptions.
- Explain tradeoffs clearly.

Knowledge work:
- Prefer persistent files over chat-only memory.
- Keep notes organized and reusable.
EOF
fi

if [ ! -f "$ROOT/system/running-context.md" ]; then
  cat > "$ROOT/system/running-context.md" <<'EOF'
# Running Context

Current focus:
- Operating the Brillect AI Operating System from Codex on a persistent Google Cloud VM.

Open loops:
- Verify Codex sees AGENTS.md.
- Verify Codex sees Brillect skills via /skills.
- Run first conductor workflow.
EOF
fi

if [ ! -f "$ROOT/system/workflows.md" ]; then
  cat > "$ROOT/system/workflows.md" <<'EOF'
# Workflows

## Daily Review
1. Review data files and inbox notes.
2. Generate daily priorities.
3. Update followups, pipeline, signals, and running context.

## Weekly Review
1. Summarize completed work.
2. Identify open loops.
3. Archive stale material.
4. Update running context.
EOF
fi

echo "Brillect Codex system initialized at $ROOT"
echo "Next: cd $ROOT && codex"
