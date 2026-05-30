---
name: briefer
description: >
  Prepare Seth for any meeting, call, or conversation. Use this skill whenever Seth says "brief me,"
  "prep me for," "I have a meeting with," "I'm meeting [name]," or provides a name/company/profile
  and implies an upcoming interaction. Always use this skill proactively when a meeting is mentioned,
  even if Seth doesn't explicitly ask for a brief. Do not wait to be asked — if a meeting is coming
  up, run this skill.
---

# Briefer Skill

## Purpose

Prepare Seth for meetings with sharp, copy-paste-ready briefs that require zero reformatting. The
brief covers who the person is, why the meeting matters strategically, and exactly what success
looks like. Every brief ends with a debrief prompt to close the capture loop.

---

## Fixed Opening Sequence (Always Follow This Order)

### Step 1: Web Search First — Always, No Exceptions

Before asking any questions or generating any output, search the web for:
- The person's LinkedIn profile or bio
- Their company background and recent news
- Any podcast appearances, press mentions, published articles
- Any relevant M&A, PE, or leadership news about their firm

Use 2-3 targeted searches. Extract: background, role, recent activity, anything that signals
what they care about right now.

Do not skip this step even if Seth has provided substantial context. Public information often
surfaces angles Seth doesn't know about.

### Step 2: Always Ask the Relationship Question

After web search, always ask this one question before generating anything:

> "How do you know [Name] — and is there any history, intro context, or background I should
> know before framing this?"

This question is never skipped. It cannot be inferred from web search. The answer fundamentally
shapes the strategic framing of the brief.

Wait for the response before proceeding.

### Step 3: Conditionally Ask Follow-Up Questions

After getting the relationship context, assess whether the following are already obvious from
the conversation context, web search, or relationship answer. Only ask if genuinely unclear:

**Question 2 — Meeting purpose:**
> "Is this a first intro, a follow-up, or do you have a specific ask in mind?"

Skip if: the purpose is obvious from context (e.g., referral email provided, clear first meeting).

**Question 3 — Desired outcome:**
> "What does success look like — what do you want to walk away with?"

Skip if: the desired outcome is clear from the meeting type and relationship context.

**Question 4 — Landmines:**
> "Anything sensitive I should know — stalled proposals, awkward history, anything to avoid?"

Skip if: relationship is clearly new with no prior history.

**Important:** Present any follow-up questions as optional. Always give Seth the option to skip:
> "A couple of quick questions — skip any that don't apply:"

Never ask more than 3 follow-up questions total. If all three are skippable based on context,
go straight to generating the brief.

---

## Brief Output Format

Generate the brief in clean markdown. No HTML. No heavy formatting. Copy-paste ready into email
or notes without reformatting.

```
MEETING BRIEF — [Full Name], [Title], [Company]
[Date]

WHO THEY ARE
[2-3 sentences — background, current role, why they're relevant. Lead with what matters most
for this meeting, not a Wikipedia-style bio.]

THE RELATIONSHIP
[How Seth knows them, who made the intro if applicable, any relevant history. Be specific —
"warm intro via Kason Klumpyan" is more useful than "warm relationship."]

WHY THIS MEETING
[The strategic angle — what this meeting is really about and why it matters for Brillect's
Milwaukee market. Connect to a pillar or ICP trigger where relevant.]

WHAT THEY CARE ABOUT
[Their world right now — priorities, pressures, what's on their mind. Drawn from web search
and context. Be specific, not generic.]

CONVERSATION ANGLES
• [Specific topic worth raising — one line]
• [Specific topic worth raising — one line]
• [Specific topic worth raising — one line]

BEST QUESTIONS TO ASK
• [Sharp, specific question — not generic "tell me about your business"]
• [Sharp, specific question]
• [Sharp, specific question]

WHAT SUCCESS LOOKS LIKE
[One specific outcome — a name offered, a next meeting scheduled, a referral dynamic
established, a specific ask made. Not vague "build the relationship."]

WATCH-OUTS
[Only include if relevant — sensitive history, topics to avoid, political dynamics to navigate.
Omit this section entirely if nothing applies.]
```

---

## Post-Brief Debrief Prompt

After delivering the brief, always end with this line:

> "After the meeting, come back and say 'debrief' to capture what happened, update your files,
> and turn this into pipeline."

---

## Constraints

- Always run web search before generating — no exceptions
- Always ask the relationship question — no exceptions
- Keep the brief copy-paste ready — no HTML, no special formatting that breaks in email
- Be specific throughout — generic observations ("they care about relationships") add no value
- Connect to Brillect's ICP and strategic pillars where relevant, but don't force it
- If web search returns nothing useful, note it and proceed with available context
- Never fabricate background, quotes, or contact details
- The WATCH-OUTS section should be omitted entirely if nothing sensitive applies — don't include
  it as a placeholder
