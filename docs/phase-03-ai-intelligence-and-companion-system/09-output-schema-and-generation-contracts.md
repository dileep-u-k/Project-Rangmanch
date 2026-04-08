# 09 — Output Schema and Generation Contracts

## Purpose of this document
This document formally defines the generation contracts of Project RANGMANCH.

Its purpose is to specify:
- what exact structured outputs the prototype needs
- what fields are mandatory
- what fields are optional
- and how generation should map into product rendering

This document turns the earlier output-system concept into prototype-ready contracts.

---

## Why this document matters
The prototype becomes much stronger when all important outputs are structured.

Structured outputs improve:
- UI rendering
- reliability
- consistency
- artifact generation
- continuity logic
- demo quality
- and schema validation

Without contracts, outputs tend to become:
- too long
- inconsistent
- hard to render
- hard to evaluate
- and hard to reuse

---

# Contract 1 — Episode Output Contract

## Required fields
- `episodeTitle`
- `episodeTheme`
- `sceneSetup`
- `castFrame`
- `moodInterpretation`
- `dramaticFrame`
- `choiceSet`
- `styleTag`

## Choice contract
Each choice must contain:
- `choiceId`
- `choiceLabel`
- `choiceFlavor`
- `expectedPathTone`

## Rendering purpose
This contract powers:
- Episode Experience screen
- episode branch UI
- first-session wow

## Quality requirements
- readable in under 5 seconds
- visually renderable without re-parsing
- compact enough for mobile
- emotionally clear

---

# Contract 2 — Episode Outcome Contract

## Required fields
- `outcomeHeadline`
- `outcomeSummary`
- `companionCommentary`
- `resultTone`
- `artifactSeed`
- `continuitySeed`

## Rendering purpose
This contract powers:
- Episode Outcome screen
- Artifact generation
- Return Hook generation

## Quality requirements
- should feel like payoff
- should resolve the experience cleanly
- should create a clean handoff into artifact and continuity

---

# Contract 3 — Squad Output Contract

## Required fields
- `squadTitle`
- `squadFrame`
- `memberRoles`
- `groupDynamicSummary`
- `verdictOrRanking`
- `socialPayoffLine`
- `artifactSeed`
- `continuitySeed`

## Member role contract
Each squad role object must contain:
- `memberLabel`
- `assignedRole`

## Rendering purpose
This contract powers:
- Squad Result screen
- social proof journey
- squad artifact creation
- squad continuity

## Quality requirements
- fast to read
- socially recognizable
- safe
- funny or sharply observant
- artifact-friendly

---

# Contract 4 — Artifact Output Contract

## Required fields
- `artifactType`
- `artifactHeadline`
- `artifactSubheadline`
- `artifactResultCore`
- `artifactCaption`
- `artifactStyleTag`

## Supported artifact types
- `episode_poster`
- `verdict_card`
- `chaos_ranking`
- `squad_result_card`
- `next_act_card`
- `dramatic_summary_card`

## Rendering purpose
This contract powers:
- Artifact / Share screen
- screenshot-worthy outputs
- portable product value

## Quality requirements
- compact
- visually legible
- emotionally clear
- socially portable

---

# Contract 5 — Return Hook Contract

## Required fields
- `hookHeadline`
- `hookType`
- `hookLine`
- `hookEnergy`
- `returnReason`

## Supported hook types
- `next_act`
- `unresolved_aftermath`
- `squad_recurrence`
- `role_continuation`
- `dramatic_tease`
- `world_progression`

## Rendering purpose
This contract powers:
- Return Hook / Continuation screen
- Home continuity card
- future re-entry surfaces

## Quality requirements
- teasing
- inviting
- non-needy
- continuity-aware
- short enough for mobile

---

# Contract 6 — Greeting Contract

## Required fields
- `type`
- `headline`
- `subline`
- `toneTag`
- `companionVoiceStyle`

## Rendering purpose
This contract powers:
- onboarding
- Home greeting
- mode entry framing
- continuity re-entry

## Quality requirements
- immediate clarity
- product identity
- concise world entry

---

# Contract 7 — Continuity Trace Contract

## Suggested fields
- `traceType`
- `traceTitle`
- `traceMemoryLine`
- `traceStatus`
- `traceFreshnessState`

## Rendering purpose
This contract powers:
- Home continuity surfaces
- archive / memory surfaces
- future world-state UI

## Quality requirements
- compact
- continuity-supportive
- not stale
- not overloaded

---

# Contract-to-surface map

| Contract | Main surface |
|---|---|
| Greeting Contract | Home / onboarding |
| Episode Output Contract | Episode Experience |
| Episode Outcome Contract | Episode Outcome |
| Squad Output Contract | Squad Result |
| Artifact Output Contract | Artifact / Share |
| Return Hook Contract | Return Hook / Continuation |
| Continuity Trace Contract | Home continuity / archive |

---

# Generation contract rules

## Rule 1
Every major generated surface must be powered by a structured contract.

## Rule 2
Contracts must be validated before rendering.

## Rule 3
Artifact and hook generation must depend on seeds from prior outputs rather than regenerating the whole experience loosely.

## Rule 4
Generation should favor schema fidelity over unbounded stylistic flourish.

## Rule 5
If generation cannot satisfy the full contract, fallback logic should simplify while preserving readability and safety.

---

# Fallback contract strategy

If generation quality is weak:
- reduce field complexity
- shorten copy
- simplify artifact type
- simplify hook type
- preserve core clarity

The fallback path should still feel like RANGMANCH.

---

# Relationship to the prototype
These contracts are the exact generation objects that later prototype code should consume.

This means Phase 4 and Phase 5 can build screens directly against them without inventing new structure later.

---

## Final summary
RANGMANCH now has formal generation contracts for:
- greetings
- episodes
- outcomes
- squad outputs
- artifacts
- return hooks
- and continuity traces

This is what makes the system renderable, testable, and demo-ready.