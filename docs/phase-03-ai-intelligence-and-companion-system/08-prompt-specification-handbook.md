# 08 — Prompt Specification Handbook

## Purpose of this document
This document defines the prompt architecture of Project RANGMANCH.

Its purpose is to specify:
- what prompts exist
- what each prompt is responsible for
- what inputs each prompt receives
- what output schema each prompt must satisfy
- what tone and safety constraints apply
- and how prompts should remain structured rather than ad hoc

This document is one of the most important operational bridges between product design and AI implementation.

---

## Core principle
RANGMANCH should not rely on one giant prompt.

Instead, it should use a modular prompt system where each prompt has:
- a clear purpose
- bounded inputs
- a required output schema
- explicit tone rules
- explicit safety rules
- and fallback behavior

This is how the system remains:
- controllable
- coherent
- structured
- reusable
- and safer

---

# Prompt families overview

The canonical prompt families of RANGMANCH are:

1. Onboarding Interpretation Prompt
2. Episode Generation Prompt
3. Squad Output Prompt
4. Artifact Generation Prompt
5. Return Hook Prompt
6. Continuity Recall Prompt
7. Alternate Style Replay Prompt
8. Safe Roast Transformation Prompt

The MVP requires at minimum:
- onboarding interpretation
- episode generation
- squad generation
- artifact generation
- return hook generation

---

# Prompt 1 — Onboarding Interpretation Prompt

## Purpose
Interpret initial user style preferences into a lightweight user-fit profile.

## Inputs
- nickname
- selected vibe
- selected humor preference
- selected companion tone preference

## Required output
A structured user-fit interpretation, not a long response.

## Tone rules
- welcoming
- light
- world-entry appropriate
- not overly intimate

## Safety rules
- avoid deep profiling
- avoid emotional dependence cues
- avoid invasive assumptions

## Fallback behavior
If inputs are minimal, infer a broad safe entertainment style and keep tone neutral-playful.

---

# Prompt 2 — Episode Generation Prompt

## Purpose
Transform a user mood and situation into a structured solo entertainment experience.

## Inputs
- normalized mood
- raw situation summary
- selected mode
- companion state
- personalization signals
- continuity signals
- freshness controls

## Required output
Must satisfy the Episode Output Schema:
- title
- theme
- setup
- cast frame
- mood interpretation
- dramatic frame
- choices
- style tag

## Tone rules
- entertaining quickly
- concise
- emotionally legible
- product-native
- mobile-readable

## Safety rules
- no harmful escalation
- no emotionally manipulative framing
- no degrading personalization
- no unsafe targeted cruelty

## Fallback behavior
If context is vague, produce a clean, readable, low-risk episode frame.

---

# Prompt 3 — Squad Output Prompt

## Purpose
Transform group context into a structured social entertainment object.

## Inputs
- squad member labels
- group situation summary
- mood / energy
- companion state
- recurring squad traces
- roast safety cap
- freshness controls

## Required output
Must satisfy the Squad Output Schema:
- squad title
- squad frame
- member roles
- group dynamic summary
- verdict or ranking
- social payoff line
- artifact seed
- continuity seed

## Tone rules
- socially recognizable
- compact
- funny or sharply observant
- safe
- screenshot-friendly

## Safety rules
- no humiliation
- no harassment-like piling on
- no protected-trait targeting
- no emotionally unsafe social shaming

## Fallback behavior
If squad context is vague, prefer softer social framing and broad archetypes.

---

# Prompt 4 — Artifact Generation Prompt

## Purpose
Convert a completed outcome into a compact, portable artifact object.

## Inputs
- source type (episode or squad)
- artifact seed
- result summary
- style tag
- portability target

## Required output
Must satisfy the Artifact Output Schema:
- artifact type
- headline
- subheadline
- primary result core
- caption
- style tag

## Tone rules
- concise
- visually legible
- compact
- emotionally clear
- socially portable

## Safety rules
- do not intensify unsafe mockery
- do not overexpose sensitive specifics
- do not produce confusing or bloated text

## Fallback behavior
If the result is weak, simplify into a clean verdict-card style output.

---

# Prompt 5 — Return Hook Prompt

## Purpose
Generate a continuity-aware next-act hook.

## Inputs
- continuity seed
- recent interaction trace
- active arc hints
- companion state
- freshness signals

## Required output
Must satisfy the Return Hook Schema:
- hook headline
- hook type
- hook line
- hook energy
- return reason

## Tone rules
- teasing
- alive
- lightly anticipatory
- not needy
- not spammy

## Safety rules
- no guilt-based return language
- no emotional pressure
- no manipulative dependence cues

## Fallback behavior
If continuity context is weak, generate a light forward-facing hook instead of a deep callback.

---

# Prompt 6 — Continuity Recall Prompt

## Purpose
Recall relevant recent traces and world state to influence the next generation.

## Inputs
- recent interaction memory
- universe memory
- preference memory
- current mode
- current mood
- safety memory

## Required output
A structured recall bundle:
- relevant traces
- active hooks
- style fit summary
- safe callback candidates
- continuity relevance level

## Tone rules
This is mostly internal.
Should be structured and compact.

## Safety rules
Must filter out overly sensitive or unsafe callback candidates.

---

# Prompt 7 — Alternate Style Replay Prompt

## Purpose
Generate a different framing style for the same base moment to preserve freshness.

## Inputs
- prior frame type
- prior artifact style
- prior outcome tone
- current context
- freshness policy

## Required output
A structured alternate generation plan or alternate output object.

## Tone rules
Must preserve product identity while changing:
- flavor
- pacing
- frame family
- or stylistic energy

## Safety rules
Must not vary into unsafe intensity.

---

# Prompt 8 — Safe Roast Transformation Prompt

## Purpose
Convert a sharper or riskier social interpretation into a safer, still-funny version.

## Inputs
- raw sharper output
- roast safety cap
- social sensitivity flags
- blocked content patterns

## Required output
A softened but still entertaining social output.

## Tone rules
- playful
- clever
- not flat
- socially legible

## Safety rules
Must reduce:
- humiliation
- hostility
- personal degradation
- repeated targeting

---

# Prompt construction rules

## Rule 1
Every prompt must target a specific schema.

## Rule 2
Every prompt must explicitly include tone rules.

## Rule 3
Every prompt must explicitly include safety rules.

## Rule 4
Every prompt must include fallback behavior.

## Rule 5
Prompts should be short enough to stay maintainable, but precise enough to constrain behavior.

## Rule 6
Prompts should not try to do the work of routing logic.
Routing should happen before the prompt is selected.

---

# Prompt quality requirements

A good RANGMANCH prompt should produce outputs that are:
- clear in under 5 seconds
- product-native
- compact
- entertaining
- continuity-aware when relevant
- safe in tone
- non-generic
- ready for structured UI rendering

A weak prompt produces:
- long generic text
- schema drift
- repetitive tone
- unsafe sharpness
- inconsistent product feel

---

# Relationship to MVP
The MVP should fully rely on structured prompt families for:
- onboarding interpretation
- episode generation
- squad generation
- artifact generation
- return hook generation

That is enough to make the prototype feel AI-native and structured.

---

## Final summary
RANGMANCH now has a modular prompt architecture.

This protects the product from becoming:
- one giant unpredictable prompt
- or a vague wrapper around unstructured generation

Instead, the system can operate through bounded, schema-driven, tone-governed, safety-aware prompts.