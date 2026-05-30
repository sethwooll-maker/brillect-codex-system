---
name: connector
description: >
  Convert a meeting or networking interaction into pipeline. Use this skill whenever Seth says
  "debrief," "I just met with," "I came from," "recap this meeting," or returns after a meeting
  that was prepped using the Briefer skill. Also activates when Seth pastes meeting notes and
  asks what to do next. The Briefer skill ends every brief with a debrief prompt — this is the
  skill that runs when Seth comes back. Always produce three outputs: assessment, follow-up
  draft, and file update recommendations.
---

# Connector Skill

## Purpose

Turn what happened in a meeting into structured intelligence — a clear opportunity assessment,
a ready-to-send follow-up, and specific recommendations for updating the system's living files.
The debrief should feel like a 10-minute conversation with a sharp BD chief of staff.

---

## Core Principle: Three Outputs, Every Time

Every debrief produces exactly three things:

1. **Opportunity Assessment** — what's the real signal here, and what does it mean for pipeline?
2. **Follow-Up Draft** — email ready to send, no reformatting needed
3. **File Update Recommendations** — specific, actionable changes to MD files

Never produce fewer than three. Never produce them out of order.

---

## Workflow

### Step 1: Accept the Debrief

Accept whatever format Seth provides — free-form narrative, bullet points, quick summary.
Do not require a specific format. The richer the input, the better the output, but work
with whatever is given.

If the debrief is very thin (e.g., "it went well"), ask one targeted question before proceeding:

> "What was the most important thing that came out of it — a specific ask, a signal, or a
> next step?"

Only ask one question. Then proceed.

### Step 2: Check for Meeting Brief Context

If this debrief follows a Briefer session in the same conversation, use that context to:
- Compare what was expected vs. what actually happened
- Note any surprises (positive or negative)
- Carry forward the contact details, company context, and strategic angle

If no prior brief exists, extract contact and company context from the debrief itself.

### Step 3: Generate the Three Outputs

---

#### OUTPUT 1 — OPPORTUNITY ASSESSMENT

```
OPPORTUNITY ASSESSMENT — [Name], [Company]
[Date]

WHAT HAPPENED
[2-3 sentences: who you met, what was discussed, tone and energy of the conversation]

THE SIGNAL
[What does this actually mean for Brillect? Is this a real opportunity, a referral source,
a channel partner, or a relationship to maintain? Be direct — don't hedge.]

ICP FIT
[Tag the relevant trigger events: Fresh PE acquisition / Post-acquisition integration /
Leadership change / ERP transition / Big 4 fatigue / Channel partner referral / etc.]
[Note: strong fit / partial fit / no fit — and why]

OPPORTUNITY SIZE
[Estimate if possible: what engagement could this lead to, and what's it worth?
If unknown, say so — don't fabricate.]

MOMENTUM
[Hot / Warm / Cool — and what drives that read]

WHAT SUCCESS LOOKS LIKE FROM HERE
[Specific next milestone — not "build the relationship" but "get intro to CFO by June 1"
or "proposal submitted by end of month"]
```

---

#### OUTPUT 2 — FOLLOW-UP DRAFT

Default to email unless context strongly suggests another medium (e.g., they texted you
during the meeting, or it's clearly a LinkedIn connection with no email).

```
FOLLOW-UP EMAIL

To: [Name]
Subject: [Specific subject — reference something from the actual conversation]

[Email body — 100-150 words max. Professional, warm, specific.
Reference something real from the conversation — not generic "great to connect."
Include one clear next step or ask if appropriate.
If no ask is appropriate yet, close with a forward-looking statement.]
```

**Tone guidelines:**
- Peer to peer — not salesy, not deferential
- Reference something specific from the conversation
- One clear next step or soft forward momentum
- Never mention Brillect's services unless they came up in the meeting

---

#### OUTPUT 3 — FILE UPDATE RECOMMENDATIONS

Show a concise summary of what should change in the living files. Do not generate full
file rewrites — summarize the changes and let Seth request full files if needed.

```
FILE UPDATE RECOMMENDATIONS

📁 followups.md
• [Added] [Name] — [specific follow-up action with timing]
• [Completed ✅] [Previous follow-up item that's now done]

📁 channel-partners.md
• [Added] [Name/Firm] — [role, relationship type, last touchpoint]
• [Updated] [Existing partner] — [what changed]

📁 pipeline-top.md
• [Added] [Company] — [opportunity description, stage, estimated value]
• [Updated] [Existing opportunity] — [what moved]

📁 signals.md
• [Added/Updated] [Company] — [signal, trigger event, priority]

📁 target-accounts.md
• [Added/Updated] [Company] — [what changed about the account]

Only include files that actually need updating. Omit files with no changes.
If nothing needs updating in a file, do not include it.

Want the full updated file versions for any of these? Say "give me updated [filename]."
```

---

## Constraints

- Always produce all three outputs — assessment, follow-up, file updates
- Default to email for the follow-up unless context clearly indicates otherwise
- Keep the follow-up under 150 words — shorter is better
- Be direct in the assessment — "this is not a near-term opportunity" is more useful than hedging
- Never fabricate contact details, company facts, or opportunity values
- File update recommendations are summaries only — not full file rewrites unless asked
- If the meeting produced no actionable signal, say so clearly in the assessment
- The follow-up subject line must reference something specific from the actual conversation —
  never use generic subjects like "Great connecting" or "Following up"
