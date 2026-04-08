# 02 — Intelligence Architecture Document

## Purpose of this document
This document defines the full intelligence architecture of Project RANGMANCH.

Its purpose is to explain:
- how the system understands a user moment
- how the companion decides how to show up
- how a moment becomes entertainment
- how personalization and continuity are injected
- how shareability is shaped
- and how safety and tone are governed

This is the main AI-system map for Phase 3.

---

## Core intelligence principle
RANGMANCH should not behave like:
- a raw prompt wrapper
- a generic roleplay engine
- or a random content generator

It should behave like:
- a companion-led entertainment orchestrator
- that reads the current moment
- picks the right frame
- structures the experience
- remembers enough to feel alive
- and produces outputs that are fresh, safe, portable, and coherent

---

# Intelligence stack overview

The official RANGMANCH intelligence stack is:

1. Context Understanding Layer
2. Companion State Layer
3. Entertainment Framing Layer
4. Narrative Construction Layer
5. Personalization Layer
6. Continuity and Memory Layer
7. Shareability Layer
8. Safety and Tone Governance Layer

These layers are sequential in logic, but some operate continuously in the background.

---

# Layer A — Context Understanding Layer

## Purpose
Determine what kind of moment the user is in.

## Inputs
- chosen mode
- mood selection
- raw situation text
- time of day
- social context
- event state
- recent interaction trace
- active continuity trace

## Questions this layer must answer
- Is this a solo or social moment?
- Is the moment bored, chaotic, dramatic, celebratory, overthinking, or chill?
- Is this better framed as an episode, squad output, or continuation?
- Does the moment have conflict, absurdity, tension, or celebration energy?
- Does continuity matter right now?

## Outputs
- normalized mood interpretation
- context type
- energy level
- social intensity
- event relevance
- frame recommendation candidates

## Why this layer matters
Without this layer, the system becomes too random and generic.

---

# Layer B — Companion State Layer

## Purpose
Decide how the companion should appear in this moment.

## Questions this layer must answer
- Should the companion be a narrator, host, judge, hype-builder, recap voice, or chill commentator?
- What energy should the companion have?
- How playful or dramatic should it be?
- How much familiarity should it express?
- Should it lean solo-intimate, social-theatrical, or continuity-aware?

## Inputs
- normalized context
- current mode
- user preference profile
- recent companion tone state
- safety intensity limits

## Outputs
- companion posture
- tone mode
- energy level
- stance
- lexical style guidance

## Why this layer matters
This is what makes the product feel like a companion instead of a generic generator.

---

# Layer C — Entertainment Framing Layer

## Purpose
Choose the right transformation style for the moment.

## Possible frame types
- episode
- roast court
- squad saga
- dramatic reveal
- survival scene
- chaos ranking
- comeback arc
- cliffhanger continuation
- cinematic reinterpretation
- recap mode

## Inputs
- context interpretation
- companion posture
- mood routing policy
- freshness constraints
- prior recent frame history

## Outputs
- chosen frame
- frame rationale
- pacing guidance
- output structure target

## Why this layer matters
The same user moment can be made entertaining in many ways.
This layer chooses the best one.

---

# Layer D — Narrative Construction Layer

## Purpose
Build the actual structured experience.

## Responsibilities
Generate:
- title
- setup
- cast
- choices
- outcome
- payoff
- artifact seed
- next hook

## Inputs
- chosen frame
- companion posture
- personalization signals
- continuity signals
- current mode
- output schema contract

## Outputs
- fully structured product-native content object

## Why this layer matters
This is where product logic becomes visible to the user.

---

# Layer E — Personalization Layer

## Purpose
Make the generated experience feel specific to the user.

## What it can inject
- humor style
- pacing preference
- preferred dramatic intensity
- recurring squad roles
- callback-safe references
- preferred tone
- preferred experience length

## What it should avoid
- invasive profiling
- overly intimate assumption
- heavy emotional dependence cues
- overly sensitive callback usage

## Why this layer matters
This is the difference between:
- generic entertaining content
and
- “this feels like my universe”

---

# Layer F — Continuity and Memory Layer

## Purpose
Preserve enough state for the product to feel alive and progressing.

## Memory groups
- Session Memory
- Recent Interaction Memory
- Long-Term Preference Memory
- Universe Memory
- Safety Memory

## Responsibilities
- retrieve relevant context
- maintain active hooks
- keep squad continuity
- support callbacks
- avoid over-persistence
- balance continuity and freshness

## Why this layer matters
Without it, RANGMANCH becomes forgettable and one-off.

---

# Layer G — Shareability Layer

## Purpose
Shape results toward portable entertainment.

## Responsibilities
- choose artifact type
- ensure compact emotional clarity
- increase screenshot-worthiness
- make verdicts and outcomes socially legible
- keep outputs concise enough for mobile and messaging

## Why this layer matters
This layer supports product growth and social portability.

---

# Layer H — Safety and Tone Governance Layer

## Purpose
Keep the product playful, safe, and emotionally appropriate.

## Responsibilities
- prevent bullying-like escalation
- soften roast intensity when needed
- prevent humiliating or abusive targeting
- prevent emotional manipulation
- cap toxic repetition
- maintain entertainment-first but safe tone

## Why this layer matters
Safety cannot be bolted on later.
It must shape generation from the start.

---

# Cross-layer control principles

## Principle 1 — Context before generation
The system should interpret before it generates.

## Principle 2 — Structured outputs over uncontrolled text
The system should target product-native schemas.

## Principle 3 — Continuity with freshness
The system should remember enough, but vary enough.

## Principle 4 — Companion visibility
The companion should remain visible across the generation flow.

## Principle 5 — Safety as a governing constraint
Safety and tone control must constrain outputs before they surface.

---

# Canonical end-to-end system flow

1. User enters app
2. Context layer classifies the moment
3. Companion state layer selects posture and tone
4. Framing layer chooses the entertainment form
5. Personalization layer injects user-specific style
6. Memory layer supplies continuity and callback signals
7. Narrative construction layer builds the structured output
8. Shareability layer shapes the artifact-facing result
9. Safety layer validates, caps, and adjusts tone
10. Product returns:
   - experience object
   - artifact object
   - return-hook object

---

# Core intelligence quality requirements

A good generated experience must be:
- understandable in under 5 seconds
- entertaining quickly
- non-generic
- user-specific
- coherent within session
- continuity-aware when relevant
- socially portable when needed
- tonally safe
- stylistically varied
- short enough for mobile

---

# What this document gives to later phases
This document gives Phase 4 and Phase 5:
- a stable system map
- a routing model
- a generation pipeline
- a continuity model
- a safety-governed intelligence design

Without this document, the product would still be AI-vague.

---

## Final summary
RANGMANCH’s intelligence architecture is now defined as a layered system that:
- interprets context
- selects companion posture
- chooses the right entertainment frame
- builds structured experiences
- injects personalization
- preserves continuity
- shapes portable outputs
- and governs tone safely

That is what makes the product truly AI-native.