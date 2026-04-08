# 05 — Episode Generation Framework

## Purpose of this document
This document defines the Episode Generation Engine of Project RANGMANCH.

Its purpose is to specify:
- how Today’s Episode is constructed
- what the internal parts of an episode are
- how personalization enters the structure
- how pacing is controlled
- how payoffs are shaped
- and how return hooks are generated

This is one of the most important Phase 3 documents because Today’s Episode is the flagship solo experience of the product.

---

## Core principle
An episode in RANGMANCH is not a random story.
It is a structured entertainment transformation of a user’s current life moment.

The system should transform:
- mood
- situation
- social trace
- tone preference
- continuity state

into:
- a title
- a setup
- cast logic
- branches
- an outcome
- an artifact seed
- a return hook

That is the full episode object.

---

# Episode construction pipeline

The canonical episode-construction flow is:

1. Context intake
2. Mood and situation interpretation
3. Companion posture resolution
4. Frame selection
5. Episode title generation
6. Setup generation
7. Cast logic generation
8. Choice generation
9. Outcome generation
10. Artifact seed generation
11. Return hook generation

---

# Episode component definitions

## Component 1 — Episode title
### Purpose
Give the moment an instantly memorable frame.

### Requirements
- short
- emotionally legible
- slightly theatrical
- specific enough to feel product-native
- readable in under 2 seconds

### Example styles
- "The Assignment Meltdown Chronicles"
- "A Study in Preventable Chaos"
- "Tonight, You Choose Drama"
- "The Overthinking Premiere"

---

## Component 2 — Setup
### Purpose
Transform the raw moment into a staged entertainment object.

### Requirements
- 1–3 sentences maximum
- clear emotional frame
- immediate readability
- strong companion voice presence
- should feel like Act 1, not long exposition

### Job
The setup is where the user feels:
“This moment has become something.”

---

## Component 3 — Cast logic
### Purpose
Define who or what is present in the scene.

### Possible cast elements
- the user
- implied others
- squad members
- “chaos”
- a social force
- the narrator’s interpretation of the scene

### Requirements
- compact
- legible
- helpful to the user’s understanding
- should not overcomplicate the flow

---

## Component 4 — Choice generation
### Purpose
Give the user meaningful but lightweight agency.

### Requirements
- 2–3 choices
- each choice must feel distinct
- each choice must lead to a meaningful tonal difference
- each choice must be readable in under 3 seconds
- choices must feel entertaining in themselves

### Choice styles
- dramatic
- savage
- chill
- clever
- absurdist
- socially brave
- self-aware

---

## Component 5 — Outcome generation
### Purpose
Deliver the payoff of the selected path.

### Requirements
- compact
- satisfying
- tonally coherent with the frame
- stronger than generic chat output
- must transition naturally into artifact and return hook

### Outcome types
- comic win
- dignified chaos
- social exposure
- low-stakes redemption
- stylish collapse
- comeback beat
- unresolved cliffhanger

---

## Component 6 — Artifact seed
### Purpose
Create the payload for the share artifact.

### Requirements
- compact label or phrase
- high emotional clarity
- easy to render into a card
- should preserve the strongest takeaway

### Example artifact seeds
- "Chief Architect of Preventable Drama"
- "You survived, but not elegantly"
- "Act 1 complete: chaos recognized"

---

## Component 7 — Return hook
### Purpose
Create continuity and next-act potential.

### Requirements
- playful
- inviting
- not needy
- should suggest progression, aftermath, or unresolved energy

### Hook styles
- next act
- aftermath pending
- tomorrow’s reveal
- unresolved social tension
- new dramatic state

---

# Episode frame families

The system should select from the following major frame families:

1. chaos_comedy
2. low_stakes_drama
3. comeback_arc
4. cinematic_reinterpretation
5. overthinking_theater
6. social_confusion_scene
7. survival_scene
8. reveal_episode
9. recap_episode
10. cliffhanger_episode

---

## Frame-family routing notes

### chaos_comedy
Best for:
- chaotic
- bored-with-absurdity
- coordination failures

### low_stakes_drama
Best for:
- dramatic
- mild personal conflict
- emotional-but-light moments

### comeback_arc
Best for:
- redemption energy
- bounce-back mood
- event recovery

### cinematic_reinterpretation
Best for:
- dramatic requests
- strong self-awareness
- playful self-performance

### overthinking_theater
Best for:
- spiraling
- mentally busy
- inner drama moments

### social_confusion_scene
Best for:
- awkward interactions
- unclear group dynamics
- social tension with humor potential

### survival_scene
Best for:
- high chaos
- collapsing plans
- collective pressure

### reveal_episode
Best for:
- “something about this needs exposing”
- group truth
- self-awareness moments

### recap_episode
Best for:
- decompression
- chill end-of-day reflection
- aftermath

### cliffhanger_episode
Best for:
- strong continuity potential
- unresolved tension
- next-act setup

---

# Personalization insertion points

Personalization should enter the episode at these points:

## Insertion point 1 — title flavor
Adjust title style based on humor and dramatic preference.

## Insertion point 2 — setup tone
Adjust wording and pacing.

## Insertion point 3 — cast framing
Use known squad or self-patterns where safe.

## Insertion point 4 — choice style
Bias choices toward preferred interaction flavor.

## Insertion point 5 — outcome tone
Match the user’s preferred entertainment intensity.

## Insertion point 6 — hook style
Match return-hook intensity to user fit and continuity state.

---

# Episode pacing rules

## Rule 1
The user should understand the episode premise in under 5 seconds.

## Rule 2
The total solo experience should feel satisfying in a short session.

## Rule 3
The setup must not be longer than the user’s patience.

## Rule 4
Choices should appear early enough to preserve agency.

## Rule 5
The outcome must land cleanly and transition quickly into artifact and hook.

---

# Quality constraints

A strong episode must be:
- readable quickly
- clearly framed
- emotionally legible
- entertaining
- user-specific
- structurally coherent
- artifact-friendly
- hook-capable

A weak episode is:
- generic
- verbose
- confusing
- slow
- tonally flat
- or too random

---

# Fallback rules

If the input is vague:
- infer a clean low-risk frame
- prefer clarity over complexity
- use host or narrator posture
- generate a flexible but compact episode

If the input is too sparse:
- favor simple moods
- use broadly relatable framing
- keep artifact and hook lightweight

If the input is messy:
- prioritize conflict and absurdity detection
- convert it into one dominant frame
- avoid overfitting every detail

---

# Relationship to the MVP
The MVP’s flagship proof depends on this framework being strong.

That means the MVP Today’s Episode flow must visibly include:
- title
- setup
- choice set
- outcome
- artifact
- hook

If any of those are missing or weak, the MVP weakens.

---

## Final summary
The Episode Generation Engine of RANGMANCH is now conceptually defined.

Its job is to transform a real-life moment into a structured entertainment object that includes:
- title
- setup
- cast logic
- choices
- payoff
- artifact seed
- return hook

That is the flagship solo intelligence loop of the product.