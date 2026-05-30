---
name: actuals-intake
description: >
  Process weekly revenue and hours data into the actuals.md tracking file. Use this skill whenever
  Seth uploads a weekly actuals report (Excel file and/or email screenshots), says "update actuals,"
  "log this week's numbers," "here's the weekly report," or shares revenue/hours data that needs
  to be recorded. Always use this skill when a weekly report is uploaded — even if Seth doesn't
  explicitly ask to update actuals.
---

# Actuals Intake Skill

## Purpose

Extract weekly revenue and hours data from an uploaded Excel file and/or email screenshots,
confirm the extracted numbers with Seth, and generate an updated `actuals.md` file for the
project. Keeps the actuals data clean, consistent, and current so Conductor and the executive
update skill can always reference accurate numbers.

---

## Workflow

### Step 1: Read the Uploaded Files

Accept any combination of:
- **Excel file** — primary source of structured data. Read using the xlsx skill.
  Read `/mnt/skills/public/xlsx/SKILL.md` before processing.
- **Email screenshots** — supplementary context. Read visually for summary numbers,
  flags, exceptions, or narrative notes not captured in the Excel.

If only screenshots are provided without an Excel file, extract numbers visually and note
that the source was a screenshot (less reliable than structured data).

### Step 2: Extract Key Metrics

From the uploaded files, extract:

**Current Week:**
- Week ending date
- Milwaukee revenue (this week)
- Milwaukee hours billed (this week)
- Any notable flags or exceptions (e.g., delayed billing, one-time items)

**YTD:**
- Total Milwaukee revenue YTD
- Running weekly breakdown (all weeks available in the report)

**Ambiguous Entries:**
- Flag any engagements or revenue lines that are not clearly Milwaukee-specific
- Note them separately and ask Seth to confirm whether they count toward Milwaukee

### Step 3: Show Extraction Summary and Confirm

Present a clean summary of what was extracted before generating any file:

```
ACTUALS EXTRACTION — Week of [Date]

CURRENT WEEK
Revenue: $[X]
Hours: [X]
[Any flags or exceptions noted]

YTD TOTAL
Revenue: $[X] of $2,000,000 goal ([X]%)

AMBIGUOUS ENTRIES (need your call)
• [Engagement name] — $[X] — [reason it's ambiguous]
  Count toward Milwaukee? Yes / No

Does this look right? Any corrections before I update actuals.md?
```

Wait for Seth's confirmation before proceeding. If there are ambiguous entries, wait for
his call on each one before generating the file.

### Step 4: Generate Updated actuals.md

Once confirmed, generate the complete updated `actuals.md` file:

```markdown
# Milwaukee Market Actuals — 2026

Last updated: [Date]

---

## Current Week (Week of [Date])
Revenue: $[X]
Hours: [X]
Notes: [Any flags or exceptions]

---

## YTD Summary
Total Revenue: $[X]
Annual Goal: $2,000,000
% to Goal: [X]%
Stretch Goal: $4,000,000
% to Stretch: [X]%

---

## YTD by Week

| Week | Week Ending | Revenue | Hours | Notes |
|------|-------------|---------|-------|-------|
| 1    | [Date]      | $[X]    | [X]   |       |
| 2    | [Date]      | $[X]    | [X]   |       |
[Continue for all weeks]

---

## Ambiguous / Shared Engagements
[List any engagements that are partially Milwaukee or judgment calls — note how they're
being counted and why]
```

Present the file update summary in the conversation and instruct Seth to replace
`actuals.md` in the project root with the new version.

---

## Constraints

- Never fabricate or estimate numbers — only record what's in the uploaded files
- Always confirm extraction before generating the file
- Flag ambiguous entries rather than making judgment calls silently
- If the Excel structure has changed from prior weeks, note it and ask Seth to confirm
  the right columns before extracting
- Keep the actuals.md format consistent week over week — do not restructure it
- If a week is missing from the YTD breakdown, note the gap rather than leaving it blank
