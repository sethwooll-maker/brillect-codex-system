---
name: scout-buy-signals
description: >
  Find and evaluate buy signals for Brillect Milwaukee pipeline creation. Use this skill whenever
  Seth asks to scout buy signals, PE activity, portfolio companies, M&A activity, ERP/HCM triggers,
  leadership changes, channel partner opportunities, attorney relationship moves, or wants a weekly
  signal radar for pipeline creation.
---

# Scout Buy Signals Skill

## Purpose

Find actionable market signals that can become relationship-first pipeline moves for Brillect.

This skill is not for general market news. Every surfaced signal must connect to a plausible Brillect
entry point and a relationship move.

## Signal Priorities

Prioritize signals in this order:

1. Existing relationship + known trigger
2. Attorney/channel partner + deal-flow trigger
3. PE sponsor + Wisconsin/Midwest portfolio company trigger
4. Target account + M&A, ERP/HCM, leadership, growth, or transformation trigger
5. New account + very strong change signal

Primary trigger families:

- M&A: acquisition, sale prep, diligence, integration, ownership transition, add-on activity, carve-out
- ERP/HCM: implementation, replacement, failed rollout, readiness, system consolidation, change management
- Growth: rapid scaling, infrastructure strain, leadership capacity gaps
- Leadership: new CFO, CHRO, CEO, controller, transformation leader, operating partner
- Sponsor pressure: fresh PE acquisition, 4-7 year hold period, near exit, IPO/public readiness

## Sources To Check

Use current web search when running this skill.

Core sources and query patterns:

- Company and PE firm press releases
- Law firm deal announcements
- Investment bank transaction announcements
- Milwaukee Business Journal and BizTimes
- ACG Wisconsin, MBBI, EPI Wisconsin, FEI Eastern Wisconsin
- LinkedIn public posts when accessible
- SEC filings and investor relations pages for public companies
- Private equity portfolio pages

Suggested searches:

- `"Wisconsin" "acquired by" private equity`
- `"Milwaukee" acquisition CFO`
- `"Wisconsin" "ERP implementation"`
- `"Milwaukee" "HCM implementation"`
- `"Wisconsin" "chief financial officer" appointed`
- `"Wisconsin" "chief human resources officer" appointed`
- `"site:lawfirm.com Milwaukee acquisition private equity"` using specific law firm domains when relevant
- `"[target company]" acquisition integration ERP CFO CHRO`
- `"[PE sponsor]" portfolio Wisconsin acquisition`

## Files To Read First

Before producing output, read the relevant files when they exist:

- `system/seth-role.md`
- `system/pipeline-qualification.md`
- `data/target-accounts.md`
- `data/signals.md`
- `data/channel-partners.md`
- `data/pe-sponsors.md`
- `data/channel-attorneys.md`
- `data/icp-refinements.md`

## Evaluation Rules

For each signal, evaluate:

- What changed?
- Why now?
- Which Brillect service line fits?
- Which assessment bridge fits, if any?
- Who is the likely buyer?
- What is the relationship path?
- What is the next move?
- Is urgency or budget visible?
- Should this become pipeline, follow-up, watchlist, or nurture?

Use direct-but-supportive ratings:

- A: urgent, funded or likely funded, senior buyer, clear Brillect fit
- B: real trigger and good relationship, but budget or urgency unclear
- C: interesting signal, weak timing or unclear buyer
- Nurture: useful relationship/context, not pipeline yet

## Output Format

```text
BUY SIGNAL RADAR — [Date]

TOP SIGNALS TO ACT ON
1. [Company / Sponsor / Partner] — [Trigger]
   Why it matters: [1 line]
   Brillect angle: [service line + assessment bridge]
   Relationship path: [known path or gap]
   Next move: [specific action]
   Rating: [A/B/C/Nurture]

RELATIONSHIP MOVES
• [Person/Firm] — [value-first reason to reach out] — [ask or next step]

PE / PORTCO WATCH
• [Sponsor] — [portfolio signal] — [recommended tracking action]

ATTORNEY CHANNEL WATCH
• [Firm/person] — [deal-flow relevance] — [recommended touch]

SUGGESTED FILE UPDATES
• `data/signals.md` — [add/update/none]
• `data/pe-sponsors.md` — [add/update/none]
• `data/channel-attorneys.md` — [add/update/none]
• `data/followups.md` — [add/update/none]
```

## Constraints

- Do not fabricate signals, contacts, transaction details, or dates.
- Cite sources when using web search.
- If a source cannot be accessed, say so.
- Prefer a small number of actionable signals over a long research dump.
- Every top signal must include a next relationship move.
- If no relationship path exists, recommend the most credible path to find one.
- Keep Seth's voice and positioning helpful, curious, and credible.

