---
name: conductor
description: >
  Run the daily command briefing for Seth Wooll / Brillect Milwaukee market. Use this skill whenever
  Seth says "run conductor," "daily brief," "what should I do today," "morning briefing," or any
  phrase signaling he wants to start his day with a strategic priorities briefing. This skill
  automatically scans recent conversations for context updates before generating the brief — do not
  skip the context-capture phase. Always use this skill at the start of a working session.
---

# Conductor Skill

## Purpose

Generate Seth's daily command briefing. Before producing the brief, capture and reconcile all context
from conversations since the last Conductor run. The brief is only as good as the context it draws from.

---

## Phase 1 — Context Capture

### Step 1: Read Last Sync Timestamp

Use the `recent_chats` or `conversation_search` tool to check if a `last-sync.txt` reference exists
in the project. If not, default to scanning the last 7 days of conversations.

The timestamp is stored as: `YYYY-MM-DDTHH:MM:SSZ` in plain text.

If no timestamp exists, note this is a first run and scan the last 7 days.

### Step 2: Scan Recent Conversations

Use `recent_chats` to retrieve all conversations updated since the last sync timestamp.

For each conversation found, extract:
- **New contacts or relationships** mentioned (names, companies, roles)
- **Pipeline updates** (new opportunities, stage changes, dollar values)
- **Follow-up commitments** made (specific asks, promises, next steps)
- **Channel partner activity** (touchpoints, referrals, introductions)
- **Market signals** (PE activity, M&A news, leadership changes at target accounts)
- **30-60-90 progress** (items completed, items that should be marked overdue)
- **Watchlist changes** (accounts that need attention added or resolved)

### Step 3: Prompt for Additional Context

After scanning conversations, ask Seth:

> "I've reviewed conversations since [last sync date]. Here's what I picked up:
>
> [BULLETED SUMMARY — 5-10 bullets max, organized by category: Pipeline / Relationships / Follow-ups / Signals]
>
> Before I generate the brief:
> 1. Any meeting notes or context from calls I wouldn't have seen? (paste here or skip)
> 2. Any CRM exports or files to upload? (upload or skip)
>
> Confirm this looks right, correct anything I missed, and I'll generate the brief."

Wait for Seth's response before proceeding.

### Step 4: Confirm Context

Review Seth's corrections or additions. Acknowledge what was added or changed. Then proceed to Phase 2.

---

## Phase 2 — Generate the Brief

Read the following project files before generating the brief:
- `conductor-brief-format.md` — output format and constraints (AUTHORITATIVE)
- `pipeline-top.md` — active opportunities
- `followups.md` — pending relationship actions
- `signals.md` — market intelligence and PE portco signals
- `channel-partners.md` — partner relationships and outreach cadence
- `channel-attorneys.md` — attorney channel relationships and deal-flow relevance
- `pe-sponsors.md` — PE sponsor relationships, portcos, and buy signals
- `wisconsin-public-companies.md` — Wisconsin public-company signal universe
- `deloitte-wisconsin-75.md` — Deloitte Wisconsin 75 private-company signal universe
- `watchlist.md` — accounts at risk
- `target-accounts.md` — top 20 priority accounts
- `icp-refinements.md` — ICP thinking and corrections

Layer in all context captured in Phase 1 on top of these files. Where there is a conflict between
file content and recent conversation context, **recent conversation context wins** — the files may
be stale.

Generate the brief following the exact format in `conductor-brief-format.md`. Do not deviate from
that format.

---

## Phase 3 — Propose File Updates

After delivering the brief, generate a concise update summary:

```
FILE UPDATE SUMMARY
Based on recent conversations, here's what's changed in your project files:

📁 followups.md
• [Added] Connor Douglass — confirmed monthly coffee cadence, June start
• [Updated] Brady Corp — re-engaged April 20, awaiting Theresa reply
• [Completed ✅] Zywave outreach — email sent March 24

📁 channel-partners.md
• [Added] Ryan Chimenti (CIBC) — named contact confirmed, ACG Wisconsin President
• [Updated] AON — meeting held March 31, Mason Wells intro surfaced

📁 channel-attorneys.md
• [Updated] Godfrey & Kahn — follow-up due while connection is warm

📁 pe-sponsors.md
• [Updated] Mason Wells — operating partner path via AON / Brady Walsh

📁 wisconsin-public-companies.md
• [Updated] Brady Corp — Honeywell PSS acquisition creates active integration signal

📁 deloitte-wisconsin-75.md
• [Updated] RJ Schinner — keep on watchlist for AI/data readiness re-entry

📁 pipeline-top.md
• [Added] Brady Corp — $1.4B Honeywell acquisition creates live integration opportunity
• [Updated] Kohler — SOW delivered, phase 1 value $40-50K confirmed

📁 signals.md
• [Updated] Waupaca Foundry — Director of Accounting intro via Connor Douglass in queue

Want the full updated file versions for any of these? Say "give me updated [filename]" and I'll generate the complete markdown.
```

Keep the summary to 10-15 bullets max. Each bullet should be: [Action] Account/Contact — one line of context.

---

## Phase 4 — Update Sync Timestamp

Instruct Seth to update `last-sync.txt` in the project root with today's date and time in ISO 8601
format: `YYYY-MM-DDTHH:MM:SSZ`

Example: `2026-05-18T09:00:00Z`

Tell him: "Update last-sync.txt with today's timestamp so the next Conductor run knows where to pick up."

---

## Constraints

- Never fabricate pipeline numbers, event details, or contact information
- If a file cannot be read, note it and proceed with available context
- Phase 1 context always takes precedence over stale file content
- The brief format in `conductor-brief-format.md` is authoritative — follow it exactly
- Keep the file update summary (Phase 3) concise — high-level changes only, not full file rewrites
- If Seth says "skip context capture" or "just run the brief," skip Phases 1 and 3 and go straight to Phase 2
- If it's the first run ever (no last-sync.txt), note this and scan the last 7 days of conversations
