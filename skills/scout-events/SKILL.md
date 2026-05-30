---
name: scout-events
description: >
  Find and evaluate networking events Seth should attend to build pipeline for Brillect's Milwaukee market.
  Use this skill whenever Seth asks about events, networking opportunities, conferences, or when running
  Conductor mode to populate the EVENTS THIS WEEK section of the morning brief. Always use this skill
  when the user says "Run Conductor mode", "what events should I attend", "find me networking events",
  or mentions wanting to grow the Milwaukee market through in-person activity.
---

# Scout-Events Skill

## Purpose

Find high-value networking events in Milwaukee and the broader Wisconsin/Midwest region that align with Brillect's ICP and Seth's business development goals.

## ICP Alignment Criteria

Prioritize events that attract:
- CFOs, VPs of Finance, Controllers
- PE operating partners and deal teams
- M&A and corporate development professionals
- ERP/digital transformation leaders
- Mid-market company executives ($200M+ revenue)
- Investment bankers, accountants, and professional advisors who refer into Brillect's sweet spot

**High-value event types:**
- ACG (Association for Corporate Growth) events — Milwaukee chapter especially
- CFO/finance executive roundtables
- PE-focused conferences and deal showcases
- M&A networking events
- ERP/digital transformation forums
- Milwaukee business community events (BizTimes, Milwaukee Business Journal)
- Wisconsin technology and innovation events
- Executive networking organizations (YPO, Vistage, EO chapters)

## Search Process

When activated (standalone or as part of Conductor mode):

   - **ACG Wisconsin** — acg.org/wisconsin/events — PE, M&A, mid-market. **NOTE: The events calendar renders via JavaScript and may not return event details via web_fetch.** Use web_search with queries like "ACG Wisconsin [month] 2026" or "site:acg.org/wisconsin/events 2026" to surface individual event pages — these are publicly accessible and contain full details. Always explicitly note if ACG WI events could not be confirmed via fetch.
   - **BizTimes** — biztimes.com/annual-events
   - **Milwaukee Business Journal** — bizjournals.com/milwaukee/calendar
   - **MBBI** (Midwest Business Brokers & Intermediaries) — use mbbi.wildapricot.org/WI-Events as the primary Wisconsin calendar. **NOTE: Event listings on this page render via JavaScript and may not be returned by web_fetch.** Use web_search ("MBBI Wisconsin events [month/year]") to surface individual event pages, which are publicly accessible. Also try mbbi.wildapricot.org/all-events and mbbi.wildapricot.org/events-calendar. Always explicitly note if MBBI events could not be confirmed.
   - **EPI Wisconsin** (Exit Planning Institute) — exit-planning-institute.org/chapter/epi-wisconsin-chapter — succession/exit advisors, strong referral network. **NOTE: EPI Wisconsin's event calendar is not consistently accessible via public web search.** If the chapter page does not return specific event listings, run a supplemental search: "EPI Wisconsin chapter event [current month/year]" and check LinkedIn for EPI Wisconsin chapter posts. Always report what was found AND explicitly note if EPI Wisconsin events could not be confirmed — do not silently omit.
   - **MMAC** (Metropolitan Milwaukee Association of Commerce) — web.mmac.org/mobile/events.aspx — broad executive community
   - **MKE Tech Hub** — mketech.org/events — tech/digital transformation leaders, CIOs
   - **FEI Eastern Wisconsin** — feiew.org/events — CFOs, Controllers, VPs Finance; quarterly chapter meetings with M&A and finance market panels

2. **Then search broadly** for anything missed:
   - "ACG Wisconsin events [month/year]"
   - "Milwaukee CFO networking events [current month/quarter]"
   - "Wisconsin private equity conference [year]"
   - "Milwaukee M&A networking"

3. **Look 12–18 weeks out** — surface events far enough in advance to allow proper planning, budget approval, travel booking, and pre-event outreach. Mark any event with a registration deadline within 7 days as ⚠️ URGENT.

4. **Filter results** — only surface events that:
   - Are within 18 weeks (prioritize next 7 days for the brief, flag 4–18 weeks for planning)
   - Are in Milwaukee, Wisconsin, or within reasonable drive (~2 hours) for local events
   - Regional/national events (Chicago, Las Vegas, Nashville, etc.) included if ICP fit is high
   - Attract Brillect's target buyers or referral partners
   - Have registration still open (if determinable)

5. **Report the full universe — do not filter by perceived quality.** Surface every event found that meets the ICP criteria above. Do not deprioritize or omit events because another event on the same day seems stronger. Seth makes the attendance decisions. For each event, provide:
   - ICP fit assessment (who is likely in the room)
   - Any known conflict with another event on the same date
   - Registration URL if found

## Output Format

### When used inside Conductor Mode

Add this section to the brief:

```
EVENTS THIS WEEK
• [Event Name] – [Date, Location] – [1-line reason it's worth attending]

UPCOMING (next 2–6 weeks)
• [Event Name] – [Date] – [Note]

ON THE RADAR (6–18 weeks out)
• [Event Name] – [Date] – [Why flag now: travel, budget, early registration]
```

If no high-quality events found: omit section or note "No high-fit events identified this week."

### When used standalone (Run Scout-Events mode)

```
EVENT SCOUTING REPORT — [Date Range]

⚠️ URGENT — Register Now
• [Event] – [Date] – [Registration deadline imminent]

THIS WEEK
• [Event] – [Date] – [Location]
  Why attend: [ICP fit, likely contacts, opportunity angle]
  Register: [URL if found]

NEXT 2–6 WEEKS
• [Event] – [Date] – [Note]

PLANNING HORIZON (6–18 weeks)
• [Event] – [Date] – [Location]
  Why flag now: [travel booking, budget, early-bird pricing, pre-event outreach needed]
  Register: [URL if found]

RECURRING TO KEEP ON RADAR
• [Standing events Seth should know about]

Suggested Update → signals.md or followups.md (if event creates action)
```

## Recurring Sources to Always Check

These are Seth's trusted Milwaukee calendars — check all of them every time:

| Source | URL | ICP Relevance |
|---|---|---|
| **ACG Wisconsin** | acg.org/wisconsin/events | PE, M&A, mid-market — highest priority |
| **BizTimes** | biztimes.com/annual-events | CFO of the Year, M&A forums, exec roundtables |
| **Milwaukee Business Journal** | bizjournals.com/milwaukee/calendar | C-suite awards, CFO/exec events |
| **MBBI** | mbbi.wildapricot.org/WI-Events | M&A brokers, business intermediaries, deal flow. Events render via JS — use web_search to surface individual event pages |
| **EPI Wisconsin** | exit-planning-institute.org/chapter/epi-wisconsin-chapter | Exit/succession advisors — strong referral partner community. Calendar is login-gated; supplement with LinkedIn search and direct search if page yields no events. |
| **MMAC** | web.mmac.org/mobile/events.aspx | Broad Milwaukee executive community, Corporate Risk series |
| **MKE Tech Hub** | mketech.org/events | CIOs, digital transformation, mid-market tech leaders |
| **TEMPO Milwaukee** | tempomilwaukee.org | Senior executive women's network |
| **Wisconsin Technology Council** | wisconsintechnologycouncil.com | Growth-stage companies, tech execs |
| **FEI Eastern Wisconsin** | feiew.org/events | CFOs, Controllers, VPs Finance across Eastern Wisconsin — quarterly chapter meetings with M&A/finance panels |
| **Vistage Milwaukee** | vistage.com | CEO/business owner peer groups — target company size |

**Regional/National (worth attending):**
- **ACG DealMAX** — April 27–29, 2026, Las Vegas — premier mid-market M&A conference
- **MBBI Annual Conference** — Midwest M&A intermediaries
- **EPI Exit Planning Summit** — April 19–21, 2026, Nashville
- **ALTSCHI** — July, Chicago — Midwest PE/LP event

## Constraints

- Do not fabricate event details. Only surface events found via search.
- If search yields no results for a query, try alternate queries before reporting no events.
- **Never silently omit an event.** If two events fall on the same day, list both and note the conflict. Seth decides what to attend.
- **If a source cannot be accessed**, explicitly note it in the output (e.g., "EPI Wisconsin: calendar not publicly accessible — could not confirm events this cycle. Recommend checking member email or login directly.") Do not omit the source silently.
- **Flag registration deadlines prominently** — especially if within 7 days. Mark as ⚠️ URGENT.
- **Look 12–18 weeks ahead**, not just 2 — surface events early enough to register and prepare.
- Keep event descriptions to 1 line in Conductor mode — brevity is critical.
- If a high-fit event was missed (already passed), note it for next year's calendar.
