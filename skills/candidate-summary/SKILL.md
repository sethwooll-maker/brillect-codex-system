---
name: candidate-summary
description: >
  Draft a concise candidate summary for a Brillect consultant. Use this skill whenever Seth says
  "draft a candidate summary," "write a summary for," "give me a quick pitch for [name]," or
  provides a consultant profile and needs a short, shareable description. Also use when Seth asks
  "how would I describe [consultant] to a client?" or similar. The summary is designed to be
  copied directly into an email without reformatting.
---

# Candidate Summary Skill

## Purpose

Produce a concise, email-ready bullet summary of a Brillect consultant. Factual, specific, and
compelling — written for a client or hiring manager who has 30 seconds to read it.

---

## Workflow

### Step 1: Read the Profile

Require the consultant's profile before doing anything. If it's not provided, ask for it.

If a specific role or engagement context is also provided, use it to prioritize which aspects
of the profile to lead with. If no role context is provided, write a general-purpose summary
that highlights the consultant's strongest and most marketable attributes.

### Step 2: Clarifying Questions (Conditional)

Only ask if genuinely unclear:

- **Audience:** Is this going to a specific client, or is it a general-purpose summary?
  (Affects tone and what to lead with)
- **Role context:** Is there a specific engagement type this is being pitched for?
  (Affects which experience to emphasize)

Skip both questions if the context makes the answers obvious. Ask one at a time if needed.

### Step 3: Generate the Summary

Produce the summary in clean plain text — bullets only, no prose paragraphs. Email-ready,
no reformatting needed.

**Output format:**

```
[CONSULTANT NAME] — Candidate Summary

• [Years] years of experience in [primary domain — e.g., finance transformation, ERP
  implementation, interim controllership]
• [Most impressive or relevant credential — company, role, or accomplishment]
• [Second most relevant credential or skill — specific, not generic]
• [Third credential, skill, or differentiator]
• [Notable engagement type or industry experience if relevant]
• [Systems/tools proficiency if relevant to the role]
• [Education or certification if it adds credibility]

Strongest fit: [1 sentence — the type of engagement or client where this consultant excels.
Be specific. "Post-acquisition finance transformation engagements where a CFO needs a senior
resource to own the reporting consolidation workstream" is good. "Finance roles" is not.]
```

---

## Core Principles

**Factual only.** Every bullet must be grounded in the actual profile. No embellishment.

**Specific over generic.** "Led finance integration across Amazon's PillPack acquisition" is
good. "Strong finance background" is not.

**Lead with the hook.** The first bullet should be the most compelling thing about this
consultant for this audience. Don't bury the lead.

**Keep it short.** 6-8 bullets maximum. Clients don't read long summaries.

**The "Strongest fit" line is mandatory.** It does the positioning work for Seth — tells the
client exactly where to slot this person without Seth having to explain it in the email.

---

## Constraints

- Bullets only — no prose paragraphs in the summary itself
- Plain text output — no HTML, no markdown that breaks in email
- Never fabricate experience, credentials, or accomplishments
- 6-8 bullets maximum — cut the least impactful if over
- Always include the "Strongest fit" line at the end
- If the profile is thin or vague, note what's missing rather than padding with generic bullets
