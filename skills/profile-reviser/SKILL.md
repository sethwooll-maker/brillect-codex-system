---
name: profile-reviser
description: >
  Revise a Brillect consultant profile for a specific job order or client engagement. Use this
  skill whenever Seth says "revise this profile," "tailor this profile for," "help me submit
  [name] for [role]," or provides a consultant profile and a job description together. Always
  use this skill when both a profile and a role exist in the same conversation — even if Seth
  doesn't explicitly ask for a revision.
---

# Profile Reviser Skill

## Purpose

Lightly tailor a consultant's profile to highlight genuine fit with a specific role. The goal is
to surface real overlap — not to reinvent the profile or oversell the candidate. Conservative
and honest always wins over aggressive and misleading.

---

## Core Principle: Light Touch Only

This is the most important rule in this skill:

**Never stretch, embellish, or fabricate.** If a skill or experience doesn't clearly exist in
the original profile, do not add it. If a bullet doesn't genuinely map to the job requirement,
leave it alone. Better to submit a conservative, honest profile than an aggressive one that
falls apart in an interview.

When in doubt: keep the original.

The consultant's reputation and Brillect's credibility are both on the line with every submission.

---

## Workflow

### Step 1: Read Both Documents

Require both inputs before doing anything:
- The consultant's original profile
- The job order or role description

If either is missing, ask for it before proceeding.

### Step 2: Assess Genuine Fit — Upfront and Honest

Before generating any output, produce a brief fit assessment in the conversation:

```
FIT ASSESSMENT — [Consultant Name] for [Role Title] at [Company]

STRONG MATCHES
• [Skill/experience that directly maps — specific and genuine]
• [Skill/experience that directly maps]

PARTIAL MATCHES
• [Experience that's adjacent but not exact — note the gap]
• [Experience that's adjacent but not exact]

GAPS / MISMATCHES
• [Requirement the consultant clearly doesn't have]
• [Requirement the consultant clearly doesn't have]

OVERALL READ
[1-2 sentences: Is this a strong fit, a stretch, or a mismatch? Be direct. If it's a stretch,
say so clearly — Seth can decide whether to proceed.]
```

If the overall fit is weak or there are significant mismatches, flag this clearly:
> "This looks like a stretch for [specific reason]. Worth submitting as a long shot, or would
> you prefer to hold for a better-matched candidate?"

Wait for Seth's confirmation before proceeding to the revision.

### Step 3: Identify Targeted Revisions

Based on the fit assessment, identify only the changes worth making:

**What to revise:**
- Reorder bullets within a section to lead with the most relevant experience
- Adjust the summary/objective to reference the type of role (without fabricating specifics)
- Emphasize existing skills that are genuinely relevant but currently buried
- Adjust terminology where the consultant used different words for the same concept
  (e.g., "financial reporting" vs. "management reporting" — same skill, different language)

**What NOT to do:**
- Do not add skills or experiences that don't exist in the original
- Do not rewrite bullets to sound like they match when they don't
- Do not remove experience that might be relevant even if not directly required
- Do not change dates, titles, company names, or any factual information
- Do not inflate scope ("supported" should not become "led")

### Step 4: Generate the Revised Profile

Produce the revised profile as a Word document using the docx skill.

Read `/mnt/skills/public/docx/SKILL.md` before generating the Word document.

The Word document should:
- Match the formatting and structure of the original Brillect profile template
- Clearly preserve the consultant's authentic voice and experience
- Only reflect the targeted revisions identified in Step 3

After generating the Word doc, include a brief change log in the conversation:

```
CHANGES MADE
• [What was changed and why — one line per change]
• [What was changed and why]

UNCHANGED
• [What was deliberately left alone despite potential relevance — explain why]
```

---

## Clarifying Questions (Ask If Needed)

Before or during the revision, ask if not already clear:
- Is there a specific aspect of this role you want emphasized above all else?
- Any context about the client that would help frame the profile? (e.g., they hate Big 4 jargon,
  they want someone who can lead not just support)

Ask one at a time. Skip if already answered in the job order.

---

## Constraints

- Light touch always — the original profile is the source of truth
- Never fabricate, stretch, or embellish
- Always produce the fit assessment before generating the revision
- Flag weak fits clearly — don't silently proceed with a mismatch
- Word doc output only — not plain text
- Change log is mandatory — Seth needs to know exactly what changed
