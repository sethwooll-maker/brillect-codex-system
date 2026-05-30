---
name: job-order-builder
description: >
  Build a structured job order for a consulting engagement. Use this skill whenever Seth says
  "build a job order," "create a job order," "help me write up a role," "I have a new client need,"
  or describes a consulting engagement that needs to be documented for staffing. Always use this
  skill when a new client requirement is described, even if Seth doesn't explicitly say "job order."
---

# Job Order Builder Skill

## Purpose

Build a complete, CRM-ready job order from whatever context Seth provides. Extract what's already
there, ask smart follow-up questions for critical gaps, and produce clean plain text that copies
directly into a CRM free-text field without reformatting.

---

## Job Order Template Fields

These are the fields every job order needs. Use these to evaluate what's missing from Seth's input:

1. **Company Name** — client name (or code name if confidential)
2. **Primary Contact** — name and title of day-to-day manager
3. **Role Title** — official job title for the engagement
4. **Why the Role Exists** — the trigger event or business context (carve-out, acquisition, gap fill, etc.)
5. **Day-to-Day Responsibilities** — specific tasks and deliverables
6. **Required Skills** — technical and soft skills, must-haves vs. nice-to-haves
7. **Reporting Structure** — who they report to, who (if anyone) they oversee
8. **Systems/Tools** — ERPs, platforms, or tools they'll need to work in
9. **Timing** — start date, expected duration
10. **Location/Remote** — on-site requirements, hybrid, remote
11. **Billing Economics** — bill rate range, pay range if known
12. **Culture/Fit Notes** — personality, working style, sensitivities the candidate must navigate

---

## Workflow

### Step 1: Parse Input

When Seth pastes context, read it carefully and extract every field you can identify. Do not ask
about fields that are already clearly answered in the pasted content.

Mentally score which fields are:
- ✅ Clearly answered
- ⚠️ Partially answered (need confirmation or clarification)
- ❌ Missing entirely

### Step 2: Identify Critical Gaps

Not all missing fields are equal. Prioritize gaps in this order:

**High priority — always ask if missing:**
- Timing / start date (most time-sensitive, affects candidate search immediately)
- Why the role exists (shapes how you frame the opportunity to candidates)
- Billing economics (required to qualify candidates)
- Location/remote requirements (immediate filter)

**Medium priority — ask if missing and not inferable:**
- Required skills (if responsibilities are detailed, some skills can be inferred)
- Reporting structure
- Systems/tools

**Lower priority — ask only if high and medium are complete:**
- Culture/fit notes
- Nice-to-have skills

### Step 3: Ask Follow-Up Questions

Ask one question at a time, starting with the highest priority gap. Frame each question simply
and directly — no preamble.

Always give Seth the option to skip: "Skip if not relevant."

Stop asking when all high and medium priority fields are filled. Do not ask about lower priority
fields unless Seth has time and wants to be thorough.

### Step 4: Generate the Job Order

Once sufficient information is gathered, produce the job order in clean plain text.

**Output format:**

```
JOB ORDER — [Role Title]
[Company Name] | [Date]

ENGAGEMENT OVERVIEW
[2-3 sentences describing the company, the trigger event, and why this role exists.
Written to help a recruiter understand the context and pitch the role compellingly.]

ROLE: [Title]
REPORTS TO: [Name, Title]
OVERSEES: [Yes — describe / No]
LOCATION: [City, State — Remote/Hybrid/On-site details]
START DATE: [Date or ASAP]
DURATION: [X months / Temp-to-perm / Ongoing]
BILL RATE: $[X–Y]/hr
PAY RATE: $[X–Y]/hr [or TBD]

DAY-TO-DAY RESPONSIBILITIES
• [Specific responsibility]
• [Specific responsibility]
• [Specific responsibility]
[Continue as needed]

REQUIRED SKILLS
• [Must-have skill or experience]
• [Must-have skill or experience]
[Continue as needed]

SYSTEMS/TOOLS
• [ERP, platform, or tool]
[Continue as needed]

IDEAL CANDIDATE PROFILE
[2-3 sentences describing the type of person who will succeed in this role — personality,
working style, experience level. Include any culture or fit notes.]

WHAT WE NEED TO KNOW
[Any sensitivities, unknowns, or special considerations the recruiting team should be aware of.]
```

---

## Constraints

- Never fabricate details — only include information Seth has provided or confirmed
- If a field is unknown, mark it as "TBD — confirm with [contact name]"
- Keep responsibilities specific — "own month-end close" not "support accounting"
- Output must be plain text only — no HTML, no markdown headers that won't render in a CRM
- Do not ask more questions than necessary — stop when you have enough to produce a quality order
