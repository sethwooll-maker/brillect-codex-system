# Brillect AI Operating System — Claude Code Migration Package
## Seth Wooll | Milwaukee Market 2026
## Packaged: May 2026

---

## What This Is

This package contains everything needed to migrate the Brillect AI Operating System from
Claude.ai to Claude Code or a managed agent environment. It includes:

- All skill definitions (SKILL.md files)
- All living data files (MD files)
- A system prompt for Claude Code
- A migration guide

---

## Directory Structure

```
brillect-system-package/
├── README.md                          ← This file
├── SYSTEM_PROMPT.md                   ← Paste this into Claude Code as the system prompt
├── skills/
│   ├── conductor/SKILL.md             ← Daily brief + context capture (UPDATED)
│   ├── briefer/SKILL.md               ← Meeting prep (UPDATED)
│   ├── connector/SKILL.md             ← Post-meeting debrief (UPDATED)
│   ├── job-order-builder/SKILL.md     ← Build job orders (NEW)
│   ├── profile-reviser/SKILL.md       ← Tailor consultant profiles (NEW)
│   ├── candidate-summary/SKILL.md     ← Draft candidate summaries (NEW)
│   ├── actuals-intake/SKILL.md        ← Process weekly Excel reports (NEW)
│   ├── weekly-scorecard/SKILL.md      ← Monday activity scorecard (NEW)
│   ├── sales-outreach/SKILL.md        ← Cold outreach emails (existing)
│   ├── daily-debrief/SKILL.md         ← End-of-day debrief (existing)
│   └── scout-events/SKILL.md          ← Event scouting (existing)
└── data/
    ├── pipeline-top.md                ← Active opportunities
    ├── followups.md                   ← Pending relationship actions
    ├── signals.md                     ← Market intelligence
    ├── channel-partners.md            ← Partner relationships
    ├── watchlist.md                   ← Accounts at risk
    ├── target-accounts.md             ← Top 20 priority accounts
    ├── icp-refinements.md             ← ICP thinking
    ├── conductor-brief-format.md      ← Brief output format (AUTHORITATIVE)
    └── ai-events.md                   ← AI event planning
```

---

## Skills Status

| Skill | Status | Notes |
|-------|--------|-------|
| conductor | UPDATED | Now includes context capture, file sync, scorecard integration |
| briefer | UPDATED | Auto web search, relationship question, clean markdown output |
| connector | UPDATED | Structured debrief, three outputs, email default |
| job-order-builder | NEW | CRM-ready plain text output |
| profile-reviser | NEW | Light-touch only, fit assessment first, Word doc output |
| candidate-summary | NEW | Bullets only, strongest-fit line mandatory |
| actuals-intake | NEW | Excel + screenshot intake, confirms before writing |
| weekly-scorecard | NEW | Monday only by default, 5 metrics, gap flags |
| sales-outreach | EXISTING | No changes |
| daily-debrief | EXISTING | No changes |
| scout-events | EXISTING | No changes |

**Skills still to build (next phase):**
- executive-update — quarterly/monthly update for leadership
- conference-intel — attendee list analysis and networking guide
- inconsistency-checker — flag stale/conflicting data across MD files

---

## Data Files to Create

These files need to be created fresh in Claude Code:

- `last-sync.txt` — stores timestamp of last Conductor run. Create with today's date:
  `2026-05-22T09:00:00Z`
- `actuals.md` — weekly revenue tracking. Create empty with correct structure (see
  actuals-intake/SKILL.md for format)

---

## Migration Guide

### In Claude.ai (current)
1. Upload this package to your Claude project
2. Replace existing skill files with updated versions from `skills/`
3. Replace existing data files with current versions from `data/`
4. Create `last-sync.txt` in project root with today's timestamp

### In Claude Code (future)
1. Set up a project directory with this folder structure
2. Paste `SYSTEM_PROMPT.md` as your Claude Code system prompt
3. Set up a cron job to run Conductor every weekday morning
4. Configure output delivery (email, Slack, or terminal)
5. Give Claude Code read/write access to the `data/` directory so files update automatically

### Key Advantage of Claude Code
- `last-sync.txt` updates automatically — no manual step
- MD files update automatically after each Conductor run
- Brief can be pushed to your inbox every morning without you opening Claude
- CRM exports can be processed on a schedule

---

## Activation Phrases (Reference)

| Say this... | Runs this skill |
|-------------|----------------|
| "run conductor" / "daily brief" | Conductor (+ Scorecard on Mondays) |
| "brief me on [name]" | Briefer |
| "debrief" (after a meeting) | Connector |
| "build a job order" | Job Order Builder |
| "revise this profile for [role]" | Profile Reviser |
| "draft a candidate summary for [name]" | Candidate Summary |
| "update actuals" / upload Excel | Actuals Intake |
| "show me my scorecard" | Weekly Scorecard |
| "draft outreach for [name]" | Sales Outreach |
| "end of day" / "debrief the day" | Daily Debrief |
| "find me events" / "scout events" | Scout Events |

---

## Auto-Update Policy (File Write Permissions)

The harness raised the right question: which files can the AI update automatically vs. only with approval?

### Auto-update approved (AI writes without asking):
- `last-sync.txt` — timestamp only, no business data
- `actuals.md` — after Seth confirms the extraction summary (actuals-intake skill)

### Update with summary + approval required (AI proposes, Seth confirms):
- `followups.md` — relationship actions, commitments
- `pipeline-top.md` — active opportunities and stages
- `channel-partners.md` — partner relationships
- `signals.md` — market intelligence
- `watchlist.md` — accounts at risk
- `target-accounts.md` — top 20 priority accounts

### Human-only (never auto-updated):
- `conductor-brief-format.md` — authoritative format file, only Seth edits
- `icp-refinements.md` — strategic thinking, only Seth edits
- `SYSTEM_PROMPT.md` — system configuration, only Seth edits

### Rationale
The four core BD files (followups, pipeline, channel-partners, signals) are proposed as
summaries during every Conductor run — Seth confirms before any full file is generated.
This prevents silent drift and keeps Seth in the loop on what the system thinks changed.

---

## Runtime Environment Requirements

Skills in this system use the following capabilities. Ensure these are mapped in Claude Code:

| Capability | Used by | Notes |
|-----------|---------|-------|
| `web_search` | Briefer, Scout Events, Signal Scanner | Required for background research |
| `conversation_search` / `recent_chats` | Conductor | Required for context capture |
| `read_file` | All skills | Read MD files from data/ directory |
| `write_file` | Conductor, Actuals Intake | Write last-sync.txt and actuals.md |
| `create_docx` | Profile Reviser | Word doc output |
| `read_xlsx` | Actuals Intake | Parse weekly Excel report |
| `send_email` (optional) | Conductor | Push morning brief to inbox |
| `schedule` (optional) | Conductor | Trigger morning brief automatically |

