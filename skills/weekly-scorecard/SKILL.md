---
name: weekly-scorecard
description: >
  Generate a weekly activity scorecard for Seth's Milwaukee market development. This skill runs
  automatically as part of the Monday Conductor brief — do not skip it on Mondays. It can also
  be triggered standalone when Seth says "show me my scorecard," "how was last week," or "weekly
  metrics." Extracts top-of-funnel activity from MD files and recent conversation history.
---

# Weekly Scorecard Skill

## Purpose

Surface a simple, honest weekly scorecard of Seth's Milwaukee market development activity.
Backward-looking only — what actually happened last week, not what's planned. Serves two
purposes: accountability scorecard and forcing function (low numbers signal the system needs
more context fed into it).

---

## When to Run

- **Always on Mondays** — include automatically in the Conductor brief, between the
  30-60-90 Pulse section and Today's Priority
- **On demand** — when Seth asks for it any other day

---

## Metrics to Track

Extract the following five metrics from MD files and recent conversation history.
Look back 7 days from the current date.

### 1. Meetings Held
**Source:** Conversation history (Connector debriefs), followups.md (completed items)
**Count:** Number of distinct meetings, calls, or meaningful conversations with prospects,
clients, or channel partners in the last 7 days.
**Flag if:** 0 meetings held — surface as a gap, not silently

### 2. Events Attended
**Source:** Conversation history, scout-events outputs, followups.md
**Count:** Number of networking events, conferences, or community events attended.
**Flag if:** 0 events this week AND no events on the horizon in the next 7 days

### 3. Pipeline Opportunities Advanced
**Source:** pipeline-top.md, recent conversation context
**Count:** Number of opportunities that moved forward in stage, had meaningful activity,
or were newly added this week.
**Note:** Include what moved, not just the count — e.g., "2 advanced (Kohler SOW delivered,
Brady Corp re-engaged)"

### 4. Channel Partner Touchpoints
**Source:** channel-partners.md, followups.md, conversation history
**Count:** Number of distinct channel partner interactions (calls, coffees, emails, events)
in the last 7 days.
**Flag if:** 0 touchpoints — Pillar 2 is being neglected

### 5. Follow-Ups Completed vs. Overdue
**Source:** followups.md
**Count:**
- Completed: items in followups.md marked ✅ or noted as sent/done in conversation history
- Overdue: items with no activity that are past their implied due date or have been sitting
  for 7+ days without movement
**Format:** X completed / Y overdue

---

## Output Format

```
WEEKLY SCORECARD — Week of [Date Range]

Meetings held:              [X] [list names/companies if ≤3, otherwise just count]
Events attended:            [X] [event names if any]
Pipeline advanced:          [X] [note what moved]
Channel partner touchpoints:[X] [partner names if any]
Follow-ups completed:       [X] completed / [Y] overdue

[GAPS — only include if something is flagged]
⚠️ [Specific gap and one-line recommendation]
```

Keep the scorecard to 8 lines maximum. No prose. No padding.

---

## Gap Flags

Include a gap flag line for any of the following:
- 0 meetings held this week → "No meetings logged — feed the system or confirm via debrief"
- 0 events attended AND none upcoming → "No events this week or next — check scout-events"
- 0 channel partner touchpoints → "No Pillar 2 activity this week — pick one partner to reach out to today"
- 3+ overdue follow-ups → "X follow-ups overdue — review followups.md before starting new outreach"
- Pipeline unchanged for 7+ days → "No pipeline movement this week — what's blocking?"

Never flag more than 2 gaps at once — prioritize the most important ones.

---

## Constraints

- Backward looking only — last 7 days, no projections
- Extract from existing data only — never fabricate activity
- If data is insufficient to count accurately, note it: "Meetings: unclear — debrief any
  meetings from last week to update the count"
- Keep output to 8 lines maximum including gap flags
- On Mondays, insert the scorecard between the 30-60-90 Pulse and Today's Priority sections
  of the Conductor brief
- On demand (non-Monday), deliver standalone without the full Conductor brief
