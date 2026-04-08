# 06 — Squad Dynamics Engine Spec

## Purpose of this document
This document defines the Squad Dynamics Engine of Project RANGMANCH.

Its purpose is to specify:
- how social mode differs from solo mode
- how friend-group energy is interpreted
- how recurring roles and archetypes are modeled
- how verdicts and rankings are generated
- how humor is kept socially recognizable but safe
- and how squad continuity is preserved

This is one of the most important Phase 3 documents because Squad Mode is the flagship social wedge of the product.

---

## Core principle
Squad Mode should not be:
- generic group humor
- random label generation
- mean-spirited roasting
- or a flat ranking gimmick

It should be:
- socially recognizable
- lightly theatrical
- structurally entertaining
- emotionally legible
- artifact-friendly
- and safe enough for broad use

The engine should interpret group dynamics, not only list names.

---

# Squad engine mission
The Squad Dynamics Engine must answer:

- What kind of group is this right now?
- What is the dominant social energy?
- Which archetypes are visible?
- What role should each person get?
- What verdict, ranking, or mini-drama best fits?
- What artifact should come out of this?
- What should be remembered for later continuity?

---

# Core squad inputs

The engine should work from the following inputs:

## Input 1 — Squad members
This may be:
- named people
- archetype placeholders
- or a mix

## Input 2 — Group situation
A short raw description of what is happening.

## Input 3 — Mood / energy
Examples:
- squad_energy
- chaotic
- savage
- festival_mode
- match_night

## Input 4 — Social history
Recent known squad traces:
- prior roles
- prior verdicts
- recurring running jokes
- unresolved aftermath

## Input 5 — Safety state
- roast intensity cap
- sensitive context flags
- protected-role logic
- no-humiliation constraint

---

# Squad role taxonomy

The engine should be able to assign recurring but flexible social archetypes.

## Core archetype set
1. Chief Instigator
2. Fake Peacemaker
3. Silent Plotter
4. Chaos Magnet
5. Accidental Main Character
6. Last-Minute Improviser
7. Overconfident Strategist
8. Reaction Merchant
9. Unofficial Narrator
10. Calm-on-the-outside, dramatic-inside
11. Group Historian
12. Wildcard Energy

These should not be treated as rigid labels.
They are entertainment archetypes.

---

# Role-assignment rules

## Rule 1
A role should feel:
- recognizable
- funny
- not needlessly cruel
- easy to understand instantly

## Rule 2
Do not assign the same person the same role too often unless continuity explicitly benefits from it.

## Rule 3
Roles should be varied enough that the system feels fresh.

## Rule 4
If the context is vague, favor broad playful roles over overly specific interpretations.

## Rule 5
If the social context is sensitive, reduce sharpness and prefer softer archetypes.

---

# Social output structures

The Squad Dynamics Engine should support the following output structures:

## Structure 1 — Squad Saga
A structured mini-drama about the current group situation.

## Structure 2 — Chaos Ranking
A rank-ordered entertainment result around a playful category.

## Structure 3 — Roast Court
A verdict-led interpretation with controlled sharpness.

## Structure 4 — Award Screen
A category-based role or “award” output.

## Structure 5 — Group Verdict
A concise judgment about what the group dynamic actually is.

## Structure 6 — Rivalry Trace
A future-facing social continuity object for recurring pair or role tension.

---

# Social replay variants

To prevent Squad Mode from feeling repetitive, the engine should support replay variation through:

- different archetype framing
- different verdict structure
- different dramatic lens
- different companion mode
- different artifact style
- different continuation line

This is important even when the same group is used repeatedly.

---

# Safe roast levels

The engine should explicitly support roast intensity levels.

## Roast level 0 — No roast
Use only warm social interpretation.

## Roast level 1 — Gentle tease
Safe, soft, clearly playful.

## Roast level 2 — Playful sharpness
More pointed, but still socially light.

## Roast level 3 — Spicy but safe
Only allowed where context clearly supports it and no sensitive targeting appears.

## Never allowed
- humiliation
- demeaning identity attacks
- degrading targeting
- emotionally manipulative mockery
- repeated pile-on behavior

The product should feel like playful commentary, not social harm.

---

# Squad continuity objects

The engine should be able to preserve:

## Object 1 — Recurring role memory
Example:
- "Chief Instigator" tends to recur for one member

## Object 2 — Group-energy trace
Example:
- this squad tends toward “preventable chaos”

## Object 3 — Pending verdict aftermath
Example:
- “verdict appeal pending”

## Object 4 — Rivalry pattern
Example:
- recurring tension between two roles

## Object 5 — Signature squad flavor
Example:
- dramatic planners
- noisy chaos unit
- fake-organized legends

These should support continuity without requiring a full social graph.

---

# Squad artifact types

The Squad Dynamics Engine should be able to feed the following artifact types:

- squad_result_card
- chaos_ranking
- verdict_card
- award_screen
- next_act_card

These should remain compact and screenshot-friendly.

---

# Squad engine quality rules

A strong squad output must be:
- recognizable quickly
- socially legible
- funny or dramatically sharp
- compact
- safe
- artifact-friendly
- continuity-capable

A weak squad output is:
- generic
- too mean
- too vague
- too long
- or not clearly about the group

---

# Relationship to the MVP
For the MVP, Squad Mode must prove:
- social relevance
- group recognizability
- artifact portability
- continuity potential

That means the MVP Squad Engine does not need:
- deep social graph modeling
- advanced long-horizon rivalry systems
- large history depth

But it does need:
- clear role logic
- clean verdict structure
- artifact seed generation
- safe roast control
- continuity seed generation

---

## Final summary
The Squad Dynamics Engine of RANGMANCH is now conceptually defined.

Its job is to convert group context into:
- archetypes
- verdicts
- rankings
- mini-dramas
- artifacts
- and social continuity traces

That is what makes Squad Mode feel socially alive rather than merely social-themed.