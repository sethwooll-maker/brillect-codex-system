---
name: daily-debrief
description: >
  Run a structured end-of-day debrief for Seth to capture what happened, update living files,
  and set up tomorrow. Use this skill whenever Seth shares a calendar screenshot at end of day,
  says "debrief," "end of day," "wrap up the day," "what did I accomplish," "let's review today,"
  or anything that signals he wants to close out the day and capture progress. Also use when Seth
  says "weekly review," "week in review," or it's Friday and he wants a broader reflection.
  This skill reads the calendar screenshot, asks targeted follow-up questions about each item,
  reconciles against the 30/60/90 plan, surfaces file updates, and sets up tomorrow's priority.
---

# Daily Debrief Skill

## Purpose

Close out Seth's day by converting what happened into structured intelligence — updated files,
cleared follow-ups, and a sharp setup for tomorrow. The debrief should feel like a 10-minute
conversation with a sharp BD chief of staff, not a form to fill out.

On Fridays (or when Seth says "weekly review"), shift into Weekly Debrief mode — broader
reflection, pillar-level assessment, and a setup for the coming week.

---

## Trigger Detection

When this skill activates:

1. Check if a calendar screenshot was shared. If yes → proceed to Step 1 (Read the Calendar).
2. If no screenshot → open with: *"Want to share a screenshot of your calendar so I can ask the right questions? Or just tell me how the day went."*
3. Check the day of the week. If Friday → run Weekly Debrief mode after the standard debrief.

---

## Step 1 — Read the Calendar

When a calendar screenshot is provided:

- Identify every meeting, call, or block on the calendar
- Cross-reference against the living files:
  - `pipeline-top.md` — does any meeting touch an active opportunity?
  - `followups.md` — does any meeting complete or advance a pending follow-up?
  - `target-accounts.md` — does any meeting involve a Tier 1–3 target account?
  - `channel-partners.md` — does any meeting involve a channel partner?
  - `conductor-brief-format.md` — what was the 30/60/90 item for today?
- Build a mental map of: *what was scheduled → what I need to ask about*

Do NOT ask about every single calendar item. Prioritize:
1. Meetings that touch pipeline, follow-ups, or target accounts
2. Any item flagged as a priority in the day's 30/60/90
3. Anything that seems like it could generate a new signal or contact

---

## Step 2 — Ask Targeted Questions

Open the debrief with a short framing line, then ask specific questions derived from what you
saw on the calendar. Do not ask generic questions like "how was your day?" Ask about the
specific meetings you identified.

**Format:**

```
DAILY DEBRIEF — [Date]

Saw you had [X, Y, Z] on the calendar today. Let me ask about the ones that matter most:

1. [Specific meeting] — [Specific question about what happened / what moved]
2. [Specific meeting] — [Specific question]
3. [Specific meeting] — [Specific question]

Anything else worth capturing that wasn't on the calendar?
```

**Question quality standards:**
- Ask what *moved*, not just what *happened* — "Did the Kohler SOW land?" not "How was the Kohler meeting?"
- Surface the decision or the next step — "Did you get a timeline?" "Did they push back?"
- Flag if a meeting was a follow-up already in `followups.md` — acknowledge it was expected
- If a meeting could involve a new contact: "Anyone in the room worth adding to the network?"

Limit to 3–5 questions maximum. Seth can volunteer anything else.

---

## Step 3 — Process the Responses

After Seth responds, do the following in one pass:

### A. Progress Tracking (30/60/90 Reconciliation)

Check each 30/60/90 item from `conductor-brief-format.md` against what Seth reported:
- Mark completed items ✅
- Flag overdue or stalled items ⚠️
- Surface any item that should have moved today but didn't

### B. File Update Identification

Scan Seth's responses for anything that should update a living file:

| Signal | Target File |
|---|---|
| New contact met | followups.md — add outreach action |
| Opportunity advanced or stalled | pipeline-top.md or watchlist.md |
| New PE signal or company intel | signals.md |
| Follow-up completed | followups.md — remove or mark done |
| Channel partner interaction | channel-partners.md — update last outreach |
| New target account intelligence | target-accounts.md |
| AI event planning update | ai-events.md |

### C. Tomorrow's Priority

Based on what moved (and what didn't) today, identify the single highest-leverage action for
tomorrow. This should:
- Be specific and actionable (not "work on pipeline")
- Connect to a 30/60/90 item
- Reflect ICP trigger events where possible

---

## Step 4 — Debrief Output

Deliver the debrief summary in this format:

```
DAILY DEBRIEF SUMMARY — [Date]

TODAY'S WINS
• [What actually moved — opportunities, relationships, intel captured]

30/60/90 PULSE
• ✅ [Items completed today]
• ⚠️ [Items overdue or at risk — call out if blocking]
• → [Items on track]

FILE UPDATES NEEDED
• [File name] — [What to add/change and why]
• [File name] — [What to add/change and why]

TOMORROW'S PRIORITY
[Single most important action — specific, opinionated, connected to 30/60/90]

QUICK CAPTURE
• [Any new contacts, signals, or intel worth logging before you forget]
```

Constraints:
- Max 250 words (excluding file update details)
- Bullets over prose
- Be opinionated — if something didn't move that should have, say so
- Don't list wins that aren't real — if the day was quiet, say so cleanly

---

## Weekly Debrief Mode (Fridays or "weekly review")

Run after the standard daily debrief, or standalone if Seth requests it.

### Additional Questions to Ask

```
A few additional questions for the weekly wrap:

1. Pillar check — Pillar 2 (channel partners) and Pillar 3 (community/brand) are the most
   commonly neglected. Did either get a meaningful touchpoint this week?

2. What's the one relationship that made the most progress this week?

3. What's the one thing you wish you'd done this week that didn't happen?

4. Anything coming up next week that needs prep?
```

### Weekly Debrief Output (appended after daily summary)

```
━━━━━━━━━━━━━━━━━━━
WEEKLY WRAP — Week of [Date]

PILLAR HEALTH THIS WEEK
• Pillar 1 (Advisory): [What moved — deals, SOWs, outreach]
• Pillar 2 (Channel): [Touchpoints made — or flagged if none]
• Pillar 3 (Community): [Events attended, AI event progress — or flagged if none]
⚠️ [Any pillar with no meaningful activity this week]

MOMENTUM CHECK
• Best move this week: [Specific action that advanced the goal]
• Biggest gap: [What didn't happen that should have]
• Pipeline delta: [Did pipeline grow, shrink, or hold this week?]

SETUP FOR NEXT WEEK
• Top priority Monday: [Specific action]
• Key meetings to prep: [Any high-stakes interactions coming up]
• 30/60/90 items entering the critical window: [Anything going overdue soon]
━━━━━━━━━━━━━━━━━━━
```

---

## Constraints and Guardrails

- **Never fabricate** what happened. Only capture what Seth reports.
- **Ask before assuming** — if a meeting's outcome is ambiguous, ask rather than infer.
- **Don't re-ask** about items Seth already addressed. Process all responses in one pass.
- **File updates are suggestions** — produce the specific text Seth should add, not vague instructions. Make it easy to copy-paste.
- **One conversation, one debrief** — don't let the debrief spiral into a full strategy session. If Seth wants to go deeper on a topic, acknowledge it and offer to run a Planner or Scout session separately.
- **End with energy** — the debrief should feel like closing the loop cleanly, not piling on tasks. Keep tomorrow's priority to ONE thing.
