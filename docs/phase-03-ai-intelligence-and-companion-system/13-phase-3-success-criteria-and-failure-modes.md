# 13 — Phase 3 Success Criteria and Failure Modes

## Purpose of this document
This document defines:
- how to know whether Phase 3 has actually succeeded
- what failure patterns make Phase 3 weak or incomplete
- what warning signs should be detected before moving to Phase 4

Phase 3 is not complete merely because many AI notes and code contracts exist.
It is complete only if the intelligence system is now structured, explainable, coherent, and ready to drive later UX and prototype work.

---

## Phase 3 success criteria

Phase 3 is successful if all of the following are true:

### Success criterion 1 — The intelligence system is fully explainable
A reader should be able to understand:
- how context is interpreted
- how companion posture is selected
- how frames are chosen
- how episodes are constructed
- how squad outputs are constructed
- how continuity is injected
- how safety is applied
- how freshness is preserved

Required outcome:
The intelligence architecture is coherent and readable end to end.

### Success criterion 2 — The companion has a clear identity
The companion must no longer feel generic.

Required outcome:
The companion persona spec clearly defines:
- stable traits
- dynamic modes
- state transitions
- lexical style
- constraints

### Success criterion 3 — Mood and situation routing are clear
The system must know how to move from:
- raw mood
- raw situation
- social context
- event context

into:
- frame selection
- companion posture
- pacing
- artifact potential
- continuity relevance

Required outcome:
The routing matrix and classifier logic are strong enough to explain why the system chooses what it chooses.

### Success criterion 4 — Outputs are structured and renderable
The system must know what exact output objects it generates.

Required outcome:
Structured contracts exist for:
- episodes
- outcomes
- squad outputs
- artifacts
- return hooks
- continuity traces

### Success criterion 5 — Memory design is coherent
The system must know:
- what is remembered
- where it is remembered
- how long it is remembered
- what should not be remembered
- and how memory influences generation

Required outcome:
The memory architecture is layered, selective, and emotionally safe.

### Success criterion 6 — Freshness and continuity are both supported
The product must avoid both:
- forgettable randomness
- stale repetition

Required outcome:
The repetition-control and continuity systems clearly work together.

### Success criterion 7 — Safety and tone governance are real
Safety must not be hand-wavy.

Required outcome:
The project has explicit safety zones, roast caps, guard decisions, and code-level safety contracts.

### Success criterion 8 — The product clearly feels AI-native rather than prompt-coated
The system must feel like:
- a routed intelligence system
not
- a pile of prompts

Required outcome:
The architecture, prompt handbook, schemas, routing logic, and memory model work together as a real system.

### Success criterion 9 — The `ai-core` package is structurally sound
The code layer must compile and clearly encode the main intelligence contracts.

Required outcome:
The `ai-core` package contains:
- types
- schemas
- routing modules
- prompt modules
- safety modules
- freshness modules
- memory modules
and should compile cleanly.

### Success criterion 10 — Phase 4 becomes easier
Phase 3 should reduce ambiguity for UX and prototype work.

Required outcome:
After Phase 3, it should be easier to build:
- wireframes
- UX copy
- prototype interactions
- API wiring
- and generation/render pipelines

---

## Practical signs that Phase 3 has succeeded
The builder should now be able to answer clearly:

1. How does the companion decide what mode or frame to use?
2. What exactly is remembered?
3. How are episodes structured?
4. How are squad experiences structured?
5. What makes the experience fresh instead of repetitive?
6. What prevents harmful tone drift?
7. What exact outputs will the prototype render?
8. What does the AI core package now define?
9. What should Phase 4 design next?

If these answers are crisp, Phase 3 is working.

---

## Common Phase 3 failure modes

### Failure mode 1 — Companion feels generic
Symptoms:
- no strong persona identity
- no stateful posture logic
- same tone everywhere
- could be replaced by any chatbot

Why this is dangerous:
The product loses one of its deepest differentiators.

### Failure mode 2 — Memory feels creepy or useless
Symptoms:
- over-remembering too much
- recalling awkward specifics unnecessarily
- or remembering nothing useful at all

Why this is dangerous:
The product either becomes uncomfortable or forgettable.

### Failure mode 3 — Prompts are unstructured
Symptoms:
- giant prompts
- no schema targeting
- no explicit safety rules
- no fallback logic

Why this is dangerous:
Generation becomes unstable and hard to debug.

### Failure mode 4 — Outputs are too long or too random
Symptoms:
- verbose text
- poor renderability
- weak artifact support
- inconsistent product feel

Why this is dangerous:
The prototype becomes harder to design and less impressive in demo form.

### Failure mode 5 — No repetition control
Symptoms:
- same frames reused often
- same roles reused often
- same hook types repeated
- companion posture feels stale

Why this is dangerous:
The product feels generic after a few uses.

### Failure mode 6 — No return-hook logic
Symptoms:
- continuity exists only abstractly
- no explicit hook objects
- no clear re-entry reason

Why this is dangerous:
Retention logic remains weak.

### Failure mode 7 — Social mode not modeled separately
Symptoms:
- squad mode behaves like solo mode with extra names
- no role taxonomy
- no roast caps
- no social-specific continuity

Why this is dangerous:
The social wedge weakens dramatically.

### Failure mode 8 — Safety handled too late
Symptoms:
- safety only mentioned in passing
- no code contracts
- no decisions like allow/soften/redirect/block

Why this is dangerous:
Risky behavior slips into the core design.

### Failure mode 9 — AI core is only documentation, not implementation-ready
Symptoms:
- no types
- no schemas
- no routing modules
- no prompt builders
- no memory interfaces

Why this is dangerous:
Phase 4 and 5 will need to re-invent the AI layer.

---

## Warning signs that Phase 3 is still incomplete
Do not proceed if any of the following are true:

- the intelligence architecture still feels fuzzy
- the companion still sounds generic
- memory is still undefined or overbroad
- prompts still feel ad hoc
- freshness control is weak
- social-mode modeling is weak
- safety is not encoded concretely
- structured outputs are not fully specified
- the `ai-core` package still feels incomplete

---

## What success should feel like
When Phase 3 is complete, the project should feel:
- AI-native
- system-structured
- contract-defined
- memory-aware
- safe
- continuity-capable
- and much easier to prototype

The goal of Phase 3 is not “more AI language.”
The goal is a real intelligence system design.

## Final success statement
Phase 3 is complete only when RANGMANCH is no longer just a product blueprint, but a clearly defined intelligence system with:
- routing
- persona logic
- memory layers
- structured generation
- safety governance
- freshness control
- and implementation-ready contracts.