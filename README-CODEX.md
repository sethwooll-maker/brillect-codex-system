# Brillect Codex System

This is the Codex-ready version of the Brillect AI Operating System.

## What changed from the Claude package

- Added `AGENTS.md` at the project root so Codex loads the operating instructions automatically.
- Copied skills into `.agents/skills/` so Codex can discover them as skills.
- Preserved original `skills/` and `SYSTEM_PROMPT.md` for reference.
- Kept all `data/` files from the original package.

## Recommended VM location

Unzip this package into:

```bash
~/knowledge/brillect-codex-system
```

Then start Codex from inside that directory:

```bash
cd ~/knowledge/brillect-codex-system
codex
```

Inside Codex, run:

```text
/skills
```

You should see Brillect skills such as conductor, briefer, connector, daily-debrief, and sales-outreach.

## First useful prompt

```text
Read AGENTS.md, data/conductor-brief-format.md, data/pipeline-top.md, data/followups.md, data/signals.md, data/channel-partners.md, and data/watchlist.md. Then tell me what context is available and what is missing before we run conductor.
```

## Notes

This system uses files as durable memory. When new business context appears, update the relevant Markdown file in `data/` or `system/`.
