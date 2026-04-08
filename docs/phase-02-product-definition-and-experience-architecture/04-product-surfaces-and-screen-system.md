# 04 — Product Surfaces and Screen System

## Purpose of this document
This document defines the full conceptual surface map of Project RANGMANCH.

Its purpose is to answer:
- what screens and surfaces the product has
- what each surface is responsible for
- which surfaces are required in MVP
- which surfaces are optional or future-facing
- and how the overall product remains coherent

This document is a conceptual screen-system architecture, not a visual design file.

---

## Why this document matters
Without a defined surface map, product design easily becomes:
- vague
- redundant
- overly chat-like
- or structurally inconsistent

RANGMANCH needs a clear screen system because it is not a generic prompt-response app.
It is a companion-led entertainment product with:
- entry logic
- framing logic
- interactive flows
- portable outputs
- and continuity surfaces

---

## Surface design principle
Every surface in RANGMANCH should answer at least one of these questions clearly:

1. How does the user enter the world?
2. How does the user start an experience?
3. How does the product transform context into entertainment?
4. How does the user interact with the result?
5. How does the product turn output into something portable?
6. How does the product prove continuity?

If a surface does none of these, it should not exist.

---

# Surface Group A — Entry and setup surfaces

## Surface A1 — Splash / Entry Screen
### Purpose
Create a clean first entry into the RANGMANCH world.

### What it should communicate
- this is not a generic AI tool
- the world has personality
- the product is entertainment-first
- the companion is present

### MVP status
Required

### Notes
This should be light and fast, not overly decorative or slow.

---

## Surface A2 — Onboarding Screen 1
### Purpose
Capture the user’s initial identity or vibe entry.

### Typical elements
- nickname or display name
- “choose your vibe” or tone preference
- light framing text from the companion

### MVP status
Required

### Notes
This is not account setup.
It is world entry.

---

## Surface A3 — Onboarding Screen 2
### Purpose
Capture lightweight entertainment-style preference.

### Typical elements
- humor preference
- companion tone preference
- optional style cues

### MVP status
Required

### Notes
Onboarding should stay short. Only collect what helps the first wow.

---

# Surface Group B — Home and navigation surfaces

## Surface B1 — Home / Universe Screen
### Purpose
Act as the main hub of the product.

### What it should show
- companion greeting
- Today’s Episode primary entry
- Squad Mode secondary entry
- quick mood / vibe chips
- continuity / next-act signal
- optional future-mode teasers

### MVP status
Required

### Why it matters
This is the product thesis in UI form.
A user should understand the product direction from this screen.

---

## Surface B2 — Quick Entry Surface
### Purpose
Give the user a low-friction way to start an experience.

### Typical forms
- mood chips
- “make my day dramatic”
- “what’s today’s act?”
- “turn this chaos into something”

### MVP status
Can be embedded inside Home rather than separate
Required as a function, not necessarily as a distinct screen

### Notes
This is important for short-session delight.

---

# Surface Group C — Solo experience surfaces

## Surface C1 — Today’s Episode Setup Screen
### Purpose
Capture the user’s moment, mood, or situation.

### Typical elements
- mood selection
- short text input
- quick preset situation types
- optional companion framing prompt

### MVP status
Required

### Notes
This should not feel like filling a form.
It should feel like setting the stage.

---

## Surface C2 — Episode Experience Screen
### Purpose
Render the structured entertainment experience.

### What it may include
- title card
- cast framing
- setup narration
- choices / branches
- companion commentary

### MVP status
Required

### Notes
This must not look like a plain chat transcript.

---

## Surface C3 — Episode Outcome Screen
### Purpose
Deliver the result of the user’s path through the episode.

### Typical elements
- outcome summary
- emotional or comic payoff
- companion closing line
- transition to artifact and next-act logic

### MVP status
Required

### Notes
This is where delight must land cleanly.

---

# Surface Group D — Social / squad experience surfaces

## Surface D1 — Squad Setup Screen
### Purpose
Let the user define the squad context for social entertainment.

### Typical elements
- friend names or archetypes
- squad framing options
- mode selection (optional)
- companion intro

### MVP status
Required

### Notes
Should be simple and fast.
Do not overcomplicate the data entry.

---

## Surface D2 — Squad Result Screen
### Purpose
Render the group-specific entertainment output.

### Typical elements
- squad title
- archetype assignment
- verdict / ranking / group scene
- compact mini-drama
- transition to artifact

### MVP status
Required

### Notes
This is one of the most important social proof surfaces in the MVP.

---

# Surface Group E — Artifact and portability surfaces

## Surface E1 — Artifact / Share Screen
### Purpose
Convert the private output into a compact, showable entertainment object.

### Artifact examples
- episode poster
- verdict card
- chaos ranking
- squad result card
- next-act teaser card

### MVP status
Required

### Why it matters
This surface proves:
- portability
- visual memorability
- social spread plausibility

### Notes
This is not optional polish.
It is part of the product logic.

---

# Surface Group F — Continuity surfaces

## Surface F1 — Return Hook / Continuation Screen
### Purpose
Signal that the product continues beyond the current session.

### Typical elements
- next act
- pending aftermath
- returning squad thread
- companion teaser
- continuation line

### MVP status
Required

### Notes
Must exist in MVP, even if lightweight.

---

## Surface F2 — Home Continuity Module
### Purpose
Show continuity on the Home surface itself.

### Typical elements
- “your next act awaits”
- prior episode trace
- active hook card
- squad continuity reminder

### MVP status
Required as a concept
Can be embedded into Home rather than separate

### Notes
This is one of the easiest ways to make the world feel alive.

---

# Surface Group G — Memory and profile surfaces

## Surface G1 — Archive / Memory Screen
### Purpose
Let the user revisit prior episodes, artifacts, or active arcs.

### Typical elements
- past episode list
- saved artifacts
- recent squad outcomes
- continuity recap

### MVP status
Optional if time allows

### Notes
Helpful, but not required for submission MVP.

---

## Surface G2 — Profile / Companion Customization Screen
### Purpose
Allow light user control over tone and presentation.

### Typical elements
- companion style
- humor intensity
- vibe defaults
- optional nickname editing

### MVP status
Optional if time allows

### Notes
This is lower priority than core experience surfaces.

---

# Surface Group H — Future expansion surfaces

## Surface H1 — Challenge Mode Surface
### Purpose
A future playful challenge-oriented entertainment mode.

### MVP status
Post-MVP
Optional teaser only

---

## Surface H2 — Scene This Surface
### Purpose
A future mode where the user asks the companion to turn a specific moment into a scene.

### MVP status
Post-MVP
Optional teaser only

---

## Surface H3 — Live Moment Mode Surface
### Purpose
A future dynamic mode for live events, sports nights, festivals, or real-time group energy.

### MVP status
Post-MVP
Optional teaser only

---

## Surface H4 — What Next? Surface
### Purpose
A deeper continuity layer where the user explores arcs, aftermath, or continuation choices.

### MVP status
Post-MVP
Optional teaser only

---

# MVP-required surface set

## Required in MVP
- Splash / Entry
- Onboarding Screen 1
- Onboarding Screen 2
- Home / Universe
- Today’s Episode Setup
- Episode Experience
- Episode Outcome
- Squad Setup
- Squad Result
- Artifact / Share
- Return Hook / Continuation

## Optional in MVP
- Archive / Memory
- Profile / Companion Customization
- Challenge Mode teaser
- Event / Live Mode teaser

## Explicitly post-MVP
- full What Next? system
- full Live Moment Mode
- full Scene This mode
- full Challenge Me mode

---

# Surface coherence rules

## Rule 1
The companion must feel present across key surfaces.

## Rule 2
The product should never visually collapse into plain chat-first behavior.

## Rule 3
Every major experience should resolve into either:
- a payoff
- an artifact
- a hook
or ideally all three.

## Rule 4
The Home surface must feel like a living world, not a dashboard of random tools.

## Rule 5
Artifact and continuity surfaces must be treated as product-core surfaces, not extras.

---

## Final summary
The screen system of RANGMANCH is built around:
- entry
- hub
- solo transformation
- social transformation
- artifact portability
- and continuity

This surface structure gives the product a coherent skeleton before visual design and engineering begin.