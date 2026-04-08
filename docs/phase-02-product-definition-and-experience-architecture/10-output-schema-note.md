# 10 — Output Schema Note

## Purpose of this document
This document defines the structured output system of Project RANGMANCH.

Its purpose is to answer:
- what kinds of content objects the product can generate
- how those outputs should be structured
- how those outputs support product surfaces
- what the AI must produce in a product-native way
- and how the product avoids devolving into generic free-form chat

This document is a bridge between Phase 2 product definition and Phase 3 AI system design.

---

## Why the output system matters
RANGMANCH is not a generic conversation product.
It is a structured entertainment system.

That means the product should not rely on uncontrolled long-form output alone.
Instead, the AI must generate product-native objects that can be:
- rendered on screens
- used in journeys
- turned into artifacts
- remembered across continuity
- and kept coherent with the product’s metaphor and mode structure

Without an output system, the product risks becoming:
- too chat-like
- too verbose
- too unstable
- too hard to render well
- and too hard to maintain quality

---

## Output-system principle
The AI should generate **structured entertainment objects**, not only text.

The output system of RANGMANCH should be built around:
- titles
- framed scenes
- choices
- outcomes
- verdicts
- role assignments
- artifacts
- and return hooks

These are the product-native building blocks of the experience.

---

# Output family overview

The canonical output families of RANGMANCH are:

1. Greeting and framing outputs
2. Episode outputs
3. Choice outputs
4. Outcome outputs
5. Squad outputs
6. Artifact outputs
7. Return hook outputs
8. Continuity trace outputs

Each is defined below.

---

# Output Family 1 — Greeting and framing outputs

## Purpose
Set tone, create world entry, and position the current experience.

## Used in
- onboarding
- Home / Universe
- mode entry
- continuity re-entry

## Typical examples
- companion greeting
- “today’s act” line
- vibe framing line
- squad-mode intro line
- continuity invitation line

## Required schema
- `type`
- `headline`
- `subline`
- `tone_tag`
- `companion_voice_style`

## Example logical object
- type: home_greeting
- headline: "Tonight’s mood? Chaotic with dramatic potential."
- subline: "Want me to turn this into an episode or drag your squad into it?"
- tone_tag: playful
- companion_voice_style: host

## Product role
Makes the product feel companion-led rather than menu-led.

---

# Output Family 2 — Episode outputs

## Purpose
Represent the core solo structured entertainment object.

## Used in
- Today’s Episode flow

## Required schema
- `episode_title`
- `episode_theme`
- `scene_setup`
- `cast_frame`
- `mood_interpretation`
- `dramatic_frame`
- `choice_set`
- `style_tag`

## Field definitions

### `episode_title`
The title of the episode.
Should be memorable and compact.

### `episode_theme`
The main emotional/entertainment flavor.
Examples:
- chaos comedy
- low-stakes drama
- comeback energy
- social confusion
- overthinking theater

### `scene_setup`
A compact setup that transforms the user’s moment into a staged entertainment object.

### `cast_frame`
The roles present in this scene.
Can include:
- user
- implied others
- inner narrator
- chaos itself
- social cast

### `mood_interpretation`
How the system has understood the user’s state.

### `dramatic_frame`
The entertainment lens applied to the situation.

### `choice_set`
An ordered set of 2–3 possible user branches.

### `style_tag`
A compact label that helps the UX / artifact layer know what flavor this is.

---

## Example logical object
- episode_title: "The Assignment Meltdown Chronicles"
- episode_theme: chaos comedy
- scene_setup: "You were aiming for productive. The universe chose confusion."
- cast_frame: "You, unfinished work, one disappearing teammate, and a narrator who has seen too much."
- mood_interpretation: "frustrated but ready to laugh"
- dramatic_frame: "late-stage academic disaster turned mini-drama"
- choice_set:
  - "Become the overdramatic hero"
  - "Expose the chaos like a courtroom witness"
  - "Pretend you planned this entire arc"
- style_tag: campus-chaos

## Product role
This is one of the most important output families in the whole product.

---

# Output Family 3 — Choice outputs

## Purpose
Give the user lightweight agency inside structured entertainment.

## Used in
- Today’s Episode
- future interactive modes

## Required schema
Each choice should contain:
- `choice_id`
- `choice_label`
- `choice_flavor`
- `expected_path_tone`

## Field definitions

### `choice_id`
Internal stable identifier.

### `choice_label`
User-facing option text.

### `choice_flavor`
A compact explanation of the attitude of the choice.
Examples:
- dramatic
- savage
- chill
- absurdist
- diplomatic

### `expected_path_tone`
What kind of outcome energy this branch should lead toward.

---

## Product rule for choices
Choices must feel:
- different from one another
- emotionally legible
- fun to select
- short enough for mobile
- meaningful enough to shape the payoff

They should not feel like fake choices.

---

# Output Family 4 — Outcome outputs

## Purpose
Deliver the payoff of a solo or structured interaction.

## Used in
- Episode Outcome screen
- future continuation surfaces

## Required schema
- `outcome_headline`
- `outcome_summary`
- `companion_commentary`
- `result_tone`
- `artifact_seed`
- `continuity_seed`

## Field definitions

### `outcome_headline`
The headline result of the path taken.

### `outcome_summary`
A compact but satisfying explanation of what happened.

### `companion_commentary`
A line from the companion that closes or punctuates the outcome.

### `result_tone`
Examples:
- comic victory
- dignified chaos
- dramatic collapse
- socially iconic
- low-stakes redemption

### `artifact_seed`
The key phrase or theme to be converted into the artifact.

### `continuity_seed`
The key signal that should be used to produce a return hook later.

---

## Product rule for outcomes
Outcomes should:
- land quickly
- feel more specific than generic chat
- preserve emotional clarity
- transition naturally into artifact and continuity

---

# Output Family 5 — Squad outputs

## Purpose
Represent the core group/social entertainment object.

## Used in
- Squad Mode

## Required schema
- `squad_title`
- `squad_frame`
- `member_roles`
- `group_dynamic_summary`
- `verdict_or_ranking`
- `social_payoff_line`
- `artifact_seed`
- `continuity_seed`

## Field definitions

### `squad_title`
The name of the current social scene or verdict.

### `squad_frame`
The dramatic or comic interpretation of the group’s current energy.

### `member_roles`
A structured list of roles or archetypes for each person or entered archetype.

### `group_dynamic_summary`
A compact explanation of the social logic of the moment.

### `verdict_or_ranking`
The main result object.
Could be:
- role result
- rank order
- category assignment
- mini verdict
- cast logic

### `social_payoff_line`
A reaction-worthy line that feels showable.

### `artifact_seed`
The phrase, label, or structure that powers the share artifact.

### `continuity_seed`
The social aftermath or ongoing-group thread.

---

## Example logical object
- squad_title: "Court of Unnecessary Chaos"
- squad_frame: "A friend group where nobody is innocent and everybody is dramatic."
- member_roles:
  - A: "Chief Instigator"
  - B: "Fake Peacemaker"
  - C: "Silent Plotter"
- group_dynamic_summary: "The plan failed, three opinions emerged, and somehow one person is acting like this was all strategic."
- verdict_or_ranking: "Most likely to escalate a simple problem into a saga: B"
- social_payoff_line: "This group cannot experience one normal event in peace."
- artifact_seed: "chaos ranking"
- continuity_seed: "verdict appeal pending"

## Product role
This output family is the social proof engine of RANGMANCH.

---

# Output Family 6 — Artifact outputs

## Purpose
Convert private or in-session delight into a compact, portable entertainment object.

## Used in
- Artifact / Share screen

## Required schema
- `artifact_type`
- `artifact_headline`
- `artifact_subheadline`
- `artifact_result_core`
- `artifact_caption`
- `artifact_style_tag`

## Artifact types
Possible values:
- episode_poster
- verdict_card
- chaos_ranking
- squad_result_card
- next_act_card
- dramatic_summary_card

## Field definitions

### `artifact_type`
Tells the product which visual template to use.

### `artifact_headline`
Main title shown on artifact.

### `artifact_subheadline`
Secondary line that sharpens the interpretation.

### `artifact_result_core`
The main payload of the artifact.

### `artifact_caption`
Optional social-caption-like supporting line.

### `artifact_style_tag`
Controls emotional / visual flavor.

---

## Product rule for artifacts
Artifacts must be:
- compact
- legible
- emotionally clear
- screenshot-worthy
- brand-consistent
- more than a plain text dump

---

# Output Family 7 — Return hook outputs

## Purpose
Signal continuity and next-act potential.

## Used in
- Return Hook / Continuation screen
- Home continuity module

## Required schema
- `hook_headline`
- `hook_type`
- `hook_line`
- `hook_energy`
- `return_reason`

## Hook types
Possible values:
- next_act
- unresolved_aftermath
- squad_recurrence
- role_continuation
- dramatic_tease
- world_progression

## Field definitions

### `hook_headline`
The main title of the continuation prompt.

### `hook_type`
The structural kind of continuity being signaled.

### `hook_line`
The actual continuation text.

### `hook_energy`
Examples:
- playful
- dramatic
- teasing
- suspenseful
- mischievous

### `return_reason`
Why the user should plausibly care.

---

## Product rule for hooks
Hooks must not feel like generic app notifications.
They should feel like:
- story continuation
- social aftermath
- unresolved energy
- world movement

---

# Output Family 8 — Continuity trace outputs

## Purpose
Represent what remains visible across sessions on Home or memory-like surfaces.

## Used in
- Home / Universe
- Archive / Memory
- future continuity layers

## Required schema
- `trace_type`
- `trace_title`
- `trace_memory_line`
- `trace_status`
- `trace_freshness_state`

## Possible trace types
- active_episode_trace
- active_squad_trace
- recent_artifact_trace
- pending_hook_trace
- season_trace

## Field definitions

### `trace_type`
What type of continuity object this is.

### `trace_title`
Compact title shown on Home or memory view.

### `trace_memory_line`
What the user should remember about it.

### `trace_status`
Examples:
- active
- fresh
- cooling
- resolved
- pending

### `trace_freshness_state`
Used to keep continuity alive without making it stale.

---

# Output hierarchy summary

## Core MVP-critical outputs
- greeting / framing outputs
- episode outputs
- choice outputs
- outcome outputs
- squad outputs
- artifact outputs
- return hook outputs

## Near-core outputs
- continuity trace outputs

These are enough to power the MVP well.

---

# Schema quality rules

## Rule 1
All outputs must be short enough for mobile use.

## Rule 2
All outputs must be emotionally legible.

## Rule 3
All outputs must feel like entertainment objects, not generic AI responses.

## Rule 4
All outputs should support rendering, not only reading.

## Rule 5
All outputs should preserve the RANGMANCH metaphor and companion voice.

---

# What this document gives to Phase 3
Phase 3 can now use this document to define:
- prompt templates
- structured output contracts
- AI orchestration layers
- continuity logic
- fallback rendering logic

Without this document, Phase 3 would become vague.

---

## Final summary
RANGMANCH’s output system is now conceptually defined.

The product should generate:
- framed greetings
- episodes
- choices
- outcomes
- squad interpretations
- artifacts
- return hooks
- and continuity traces

This is the structured output backbone that protects the product from becoming a generic chat experience.