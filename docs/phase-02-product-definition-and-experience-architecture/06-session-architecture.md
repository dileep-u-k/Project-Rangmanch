# 06 — Session Architecture

## Purpose of this document
This document defines the core session architecture of Project RANGMANCH.

Its purpose is to answer:
- what the shape of a RANGMANCH session is
- what sequence of states the user moves through
- how the product transforms a moment into entertainment
- where interaction, payoff, sharing, and continuity happen
- and how all major flows remain structurally coherent

This document defines the backbone of the prototype.

---

## Why session architecture matters
Without a clear session architecture, even a strong product can become:
- messy
- too chat-like
- too slow
- overly feature-heavy
- unclear in its payoff
- or weak in retention

RANGMANCH is a companion-led entertainment product.
That means it needs a strong experience rhythm.

The session must feel like:
- entry
- setup
- framing
- performance
- payoff
- aftermath
- continuation

That rhythm is the product.

---

# Core session backbone

The canonical RANGMANCH session architecture is:

1. **Entry**
2. **Context Capture**
3. **Entertainment Frame Selection**
4. **Interactive Experience**
5. **Payoff**
6. **Share Moment**
7. **Return Hook**

This is the official session structure.

---

# Session Stage 1 — Entry

## Purpose
Move the user into the product world with minimal friction.

## What happens here
The user enters through:
- splash / entry screen
- onboarding
- or Home / Universe re-entry

## Emotional goal
The user should feel:
- welcomed
- curious
- quickly oriented
- and ready for something entertaining

## Product goal
The product should establish:
- companion presence
- clarity of the product
- immediate route to action

## Main surfaces involved
- Splash / Entry
- Onboarding
- Home / Universe

## Key design rule
Entry should feel like entering a world, not opening a utility app.

---

# Session Stage 2 — Context Capture

## Purpose
Collect enough information about the current moment to make the experience feel personal and relevant.

## What happens here
The user provides:
- mood
- situation
- vibe
- or squad context

This can happen through:
- quick chips
- short text
- preset states
- friend/archetype entry

## Emotional goal
The user should feel:
- “this will be about my moment”
- “this understands what kind of state I’m in”

## Product goal
The system should collect enough signal to drive:
- frame choice
- tone choice
- output structure
- companion behavior

## Main surfaces involved
- Today’s Episode Setup
- Squad Setup
- quick-entry chips on Home

## Key design rule
Context capture should feel like stage setup, not form-filling.

---

# Session Stage 3 — Entertainment Frame Selection

## Purpose
Convert raw context into a specific entertainment structure.

## What happens here
The companion and product select the right frame for the moment, such as:
- episode
- mini-drama
- verdict
- group chaos ranking
- scene
- aftermath
- next-act setup

## Emotional goal
The user should feel:
- “this moment has become something”
- “I’m entering a specific entertainment structure now”

## Product goal
This stage is where the system stops being generic and becomes product-native.

## Main surfaces involved
- Episode Experience intro
- Squad Result intro
- companion framing moments

## Key design rule
The product must visibly transform the moment before asking for deeper interaction.

---

# Session Stage 4 — Interactive Experience

## Purpose
Let the user participate in the structured entertainment rather than passively consume it.

## What happens here
The user:
- chooses between branches
- reacts to framing
- moves through the episode
- or sees structured group interpretation in Squad Mode

## Emotional goal
The user should feel:
- engaged
- curious
- involved
- and entertained by progression

## Product goal
Create agency and momentum.

## Main surfaces involved
- Episode Experience
- Squad Result
- interactive choice components

## Key design rule
Interaction should feel meaningful but lightweight.
It should increase delight, not slow the product down.

---

# Session Stage 5 — Payoff

## Purpose
Deliver the emotional and entertainment result of the interaction.

## What happens here
The user gets:
- outcome
- comic or dramatic resolution
- verdict
- role assignment
- summary reveal
- or emotional payoff line

## Emotional goal
The user should feel:
- rewarded
- amused
- recognized
- surprised
- or socially validated

## Product goal
This is where the product proves its value clearly.

## Main surfaces involved
- Episode Outcome
- Squad Result resolution
- verdict sections

## Key design rule
Payoff must land clearly and quickly.
This is not the place for vague output.

---

# Session Stage 6 — Share Moment

## Purpose
Convert the delight into a socially portable object or emotionally memorable artifact.

## What happens here
The product offers:
- episode poster
- verdict card
- squad result card
- chaos ranking
- next-act teaser card

## Emotional goal
The user should feel:
- “I want to save this”
- “I want to show this”
- “this is worth reacting to again”

## Product goal
This stage turns product value into:
- portability
- social legibility
- growth potential

## Main surfaces involved
- Artifact / Share Screen

## Key design rule
The share moment must feel like a natural continuation of the session, not a forced feature.

---

# Session Stage 7 — Return Hook

## Purpose
Make the session feel like part of an ongoing world rather than a one-time output.

## What happens here
The product introduces:
- next act
- continuation tease
- squad aftermath
- unresolved thread
- recurring arc signal
- active continuity surface

## Emotional goal
The user should feel:
- anticipation
- world continuity
- product aliveness
- light return curiosity

## Product goal
This stage proves retention potential.

## Main surfaces involved
- Return Hook Screen
- Home continuity module
- optional archive trace

## Key design rule
The return hook should feel like continuation, not generic re-engagement messaging.

---

# Canonical session variants

The session architecture stays the same at a high level, but the exact execution differs by mode.

---

## Variant A — Today’s Episode session
1. Entry
2. Mood / moment capture
3. Episode framing
4. Branching interaction
5. Outcome
6. Artifact
7. Return hook

This is the flagship solo session.

---

## Variant B — Squad Mode session
1. Entry
2. Squad context capture
3. Group entertainment framing
4. Group interpretation / structured reveal
5. Verdict / payoff
6. Artifact
7. Continuation line

This is the flagship social session.

---

## Variant C — Quick re-entry session
1. Entry from Home
2. Continuity reminder
3. Fast continuation or new act selection
4. Short interaction
5. Compact payoff
6. Optional artifact
7. Next hook

This is a future stronger retention session pattern.

---

# Session design requirements

## Requirement 1 — The session must be understandable fast
A user should not need long explanation to understand what is happening.

## Requirement 2 — The session must feel staged
Every session should feel like a structured act, not a random content burst.

## Requirement 3 — The companion must be visible
The companion should frame and connect the stages.

## Requirement 4 — The session must resolve into a payoff
No major experience should end without a satisfying result.

## Requirement 5 — The session should naturally support portability
At least the core flows should end in something that can become an artifact.

## Requirement 6 — The session must support continuity
The session should not collapse into one-off novelty.

---

# Session anti-patterns to avoid

## Anti-pattern 1 — Chat sprawl
The session should not devolve into open-ended conversation with no product structure.

## Anti-pattern 2 — Weak framing
If the moment is not clearly transformed into an entertainment object, the product loses distinctiveness.

## Anti-pattern 3 — Payoff delay
If the delight takes too long, the product weakens.

## Anti-pattern 4 — No artifact handoff
If the experience ends privately with no portable result, growth logic weakens.

## Anti-pattern 5 — No continuation
If the product gives no reason to return, it feels gimmicky.

---

# Relationship to the MVP
The submission MVP must fully implement this session backbone at least for:
- Today’s Episode
- Squad Mode

This means the MVP must visibly support:
- entry
- context capture
- framing
- interaction
- payoff
- artifact
- return hook

That is the minimum viable session architecture.

---

## Final summary
RANGMANCH sessions should not feel like random AI output generation.
They should feel like:
- entering a moment
- having that moment transformed
- participating in its entertainment form
- receiving a payoff
- being given something portable
- and being left with a next act

That is the defining experience rhythm of the product.