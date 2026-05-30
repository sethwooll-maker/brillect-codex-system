---
name: sales-outreach
description: Generate personalized B2B sales outreach emails using the SMYKM framework for accounting, finance, and HR advisory services. Use when the user needs to draft cold outreach emails to finance decision-makers (CFOs, VPs of Finance) at companies experiencing growth, transformation, or M&A activity. Takes prospect information (title, company, background, mutual connections) and creates tailored emails that build connection before asking.
---

# Sales Outreach Email Generator

This skill helps draft personalized cold outreach emails for B2B sales targeting finance decision-makers using the SMYKM (See Me, You, Know Me) framework.

## Overview

Generate outreach emails for advisory/consulting services in accounting, finance, and HR. Target audience is CFOs and VPs of Finance at companies undergoing:
- Growth (Series A-C funding, scaling from 50-500 employees)
- Transformation (new systems, new leadership, process changes)
- M&A activity (acquisitions, mergers, carve-outs)

## Quick Start

### Input Format

Accept prospect information in any format the user provides. Common formats include:

**Structured:**
```
Name: John Smith
Title: VP of Finance
Company: Acme Corp
Mutual connections: Jane Doe (CFO at TechCo)
Education: University of Michigan (BBA Finance)
Background: Previously at Oracle (Finance Manager)
Context: Company recently raised Series B ($25M)
```

**Conversational:**
"I found a prospect named Sarah Chen, she's the CFO at GrowthCo. They just acquired a competitor last quarter. She went to Stanford and we have a mutual connection - Mike Johnson who's the CFO at DataCorp. She was previously VP Finance at Salesforce."

**Batch/CSV:**
Accept multiple prospects at once in CSV or table format.

### Output Format

Generate 2-3 email variations per prospect unless user requests otherwise. Each email should include:
- Subject line
- Complete email body (100-150 words)
- Brief note on personalization approach used

Present emails ready to copy/paste - no additional formatting or preamble needed beyond the requested variations.

## Business Context Integration

**If a business context profile exists** (file named `business-context-profile.md` in uploads or mentioned by user):

1. **Load the profile first** before generating any outreach
2. **Use profile information to:**
   - Match prospect against ICP criteria (prioritize high-fit prospects)
   - Select most relevant value propositions based on prospect's situation
   - Identify credibility builders (shared background, mutual networks)
   - Apply appropriate trigger event messaging
   - Use preferred terminology and avoid blacklisted phrases
   
3. **Tailor messaging** using:
   - User's actual background and credentials (not generic consultant positioning)
   - Specific service offerings that match prospect's needs
   - Real proof points and results from the profile
   - User's preferred tone and positioning statements

**If no business context profile exists:**
- Use general best practices from reference files
- Suggest creating a business context profile for better results
- Proceed with available prospect information

## Core Process

### 1. Analyze Prospect Context

Identify the primary trigger/hook:
- **Growth trigger**: Recent funding, rapid hiring, expansion
- **Transformation trigger**: New role, system change, process improvement
- **M&A trigger**: Acquisition, merger, integration, carve-out
- **Relationship trigger**: Strong mutual connection, shared background

Select the strongest hook - the most recent or most relevant context.

### 2. Select Personalization Elements

Prioritize elements in this order:
1. Mutual connections (highest value)
2. Shared educational background
3. Similar work experience
4. Recent company news/context
5. Industry-specific challenges

Use 2-3 personalization elements per email. More is not better - forced connections weaken the message.

### 3. Apply SMYKM Framework

**See Me** (Opening 1-2 sentences):
- Reference specific recent context (role change, funding, acquisition)
- Or acknowledge industry challenge they're likely facing
- Make it clear you've done research

**You** (Body 2-3 sentences):
- Connect their context to common pain points
- Frame insights around their specific situation
- Build credibility through understanding

**Know Me** (Middle 1-2 sentences):
- Reference mutual connection or shared background naturally
- Position your advisory services as relevant to their needs
- Establish credibility without hard selling

**Soft close** (Final 1-2 sentences):
- Low-friction ask (15-minute call, compare notes, share insights)
- Respectful of their time
- Open door without pressure

### 4. Writing Guidelines

**Tone:**
- Conversational but professional - peer to peer
- Confident without arrogance
- Avoid jargon and corporate speak
- Human and authentic

**Length:**
- Target: 100-125 words
- Maximum: 150 words
- Subject line: 4-8 words

**Structure:**
- Short paragraphs (1-3 sentences each)
- Natural transitions between framework elements
- One clear call-to-action

**Quality checks:**
- Could this email be sent to anyone else? If yes, add more personalization
- Does it lead with the prospect's context, not your credentials?
- Is the ask specific and low-friction?
- Would you want to receive this email?

## Advanced Usage

### Multiple Prospects

When user provides multiple prospects:
- Generate 1-2 variations per prospect (not 3)
- Summarize personalization approach for each
- Group by similar context if helpful

### Missing Information

If key details are missing:
- Ask for the most important missing element (mutual connection or recent context)
- Can proceed with partial information if there's enough to personalize
- Don't ask for everything - work with what's available

### Follow-up Emails

If user requests follow-up emails:
- Reference the initial outreach
- Add new value or insight
- Maintain same tone and brevity
- Suggest 5-7 day gap between touches

## Reference Files

For detailed framework guidance and examples:
- **[smykm_framework.md](references/smykm_framework.md)** - Complete SMYKM framework explanation with examples
- **[value_propositions.md](references/value_propositions.md)** - Pain points, trigger events, and positioning angles for advisory services

Read these files when:
- User asks about the SMYKM framework
- Need examples of different scenarios (growth/M&A/transformation)
- Want to understand value propositions for different contexts
- Need to refine email quality or style

## Common Variations

**Subject line styles:**
User may prefer different approaches:
- Question format: "Quick question about [Company]'s [situation]"
- Congrats format: "Congrats on [achievement/role]"
- Topic format: "[Topic] at [growth stage] companies"
- Mutual connection: "[Mutual name] suggested I reach out"

**Call-to-action variations:**
- "Would you be open to a 15-minute call next week?"
- "Happy to share what we're seeing - do you have 15 minutes?"
- "Would you be interested in comparing notes?"
- "Let me know if you'd find a brief conversation useful"

Adapt based on user preference or prospect context.
