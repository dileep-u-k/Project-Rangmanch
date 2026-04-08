# 04 — Mood and Situation Routing Matrix

## Purpose of this document
This document defines how Project RANGMANCH interprets user mood and raw situation input, and how that interpretation routes the system toward the right companion posture, entertainment frame, and output style.

This is one of the most important Phase 3 documents because it explains how the system knows what kind of experience to generate.

---

## Why this document matters
Without a routing system, the product risks:
- generating the wrong kind of experience
- sounding repetitive
- feeling tonally off
- missing social opportunities
- or collapsing into generic entertainment output

RANGMANCH should not react to every input in the same way.
It should understand the difference between:
- bored
- chaotic
- chill
- dramatic
- squad energy
- overthinking
- festival mode
- match night
- and decompression states

That is what this routing matrix controls.

---

# Part A — Mood interpretation system

## Core principle
Mood is not just flavor.
Mood is a routing signal.

It should affect:
- companion mode
- energy level
- dramatic intensity
- ideal entertainment frame
- pacing
- social sharpness
- and likely artifact style

---

## Canonical mood set

The MVP and near-MVP system should support the following canonical moods:

1. bored
2. chaotic
3. savage
4. chill
5. dramatic
6. overthinking
7. squad_energy
8. festival_mode
9. match_night
10. decompression

---

## Mood routing matrix

| Mood | Emotional meaning | Preferred companion posture | Preferred frame types | Energy level | Social sharpness | Recommended pacing |
|---|---|---|---|---|---|---|
| bored | low stimulation, wants novelty | host, narrator | episode, reveal, challenge-lite | medium | gentle | fast |
| chaotic | overloaded, absurd, messy | narrator, savage_commentator | chaos comedy, survival scene, verdict | medium-high | playful | fast-medium |
| savage | wants sharpness and reaction | savage_commentator, judge_verdict | roast court, verdict, squad ranking | medium | spicy | fast |
| chill | low-pressure, relaxed | host, chill_recap | recap, soft episode, low-stakes scene | low-medium | gentle | medium |
| dramatic | wants theatrical framing | narrator, hype | episode, cinematic reinterpretation, reveal | medium-high | playful | medium |
| overthinking | spiraling, mentally overactive | chill_recap, narrator | recap, internal drama, overthinking theater | low-medium | gentle | medium |
| squad_energy | social fun, group activation | judge_verdict, hype | squad saga, ranking, group verdict | high | playful | fast |
| festival_mode | celebratory and expressive | hype, host | festive episode, celebration arc, event frame | high | playful | fast-medium |
| match_night | live reaction energy | hype, judge_verdict | rivalry scene, reaction court, live saga | high | playful-spicy | fast |
| decompression | tired, wants light reframing | chill_recap, host | recap, soft episode, calm payoff | low | gentle | fast-medium |

---

## Mood-specific design rules

### bored
The system should optimize for:
- freshness
- immediate framing
- low-friction payoff

The system should avoid:
- overcomplicated setup
- low-energy wording
- slow starts

---

### chaotic
The system should:
- recognize absurdity
- turn mess into structure
- create comic or dramatic relief

The system should avoid:
- overly serious interpretation
- emotional heaviness
- bland summarization

---

### savage
The system should:
- increase sharpness
- produce crisp labels or verdicts
- stay funny and bounded

The system should avoid:
- humiliation
- bullying energy
- unsafe targeting

---

### chill
The system should:
- keep tone calm but interesting
- avoid overacting
- still preserve entertainment value

The system should avoid:
- flatness
- boring recap
- over-dramatization

---

### dramatic
The system should:
- increase theatricality
- heighten framing
- create clean scene logic

The system should avoid:
- turning every line into melodrama
- losing readability

---

### overthinking
The system should:
- externalize the spiral into something interpretable
- keep tone light
- offer recognition and relief

The system should avoid:
- validating heavy emotional spirals too intensely
- sounding therapeutic

---

### squad_energy
The system should:
- prioritize group roles
- increase social recognizability
- output something fast and legible

The system should avoid:
- deep solo introspection
- slow buildup

---

### festival_mode
The system should:
- be brighter
- more expressive
- occasion-aware
- slightly more celebratory

The system should avoid:
- generic outputs that ignore the event energy

---

### match_night
The system should:
- support fast, reaction-driven entertainment
- create rivalry-safe, event-aware outputs
- favor verdict and drama framing

The system should avoid:
- long exposition
- unsafe escalation
- mean-spirited targeting

---

### decompression
The system should:
- provide relief
- keep entertainment gentle but real
- preserve low effort and low pressure

The system should avoid:
- too much cognitive load
- too much social aggression
- noisy hype energy

---

# Part B — Situation interpretation system

## Core principle
Raw user situations should be parsed into product-relevant signals.

The system should not store the raw text only.
It should detect:
- conflict
- social opportunity
- absurdity
- emotional flavor
- event relevance
- solo vs social fit
- continuity relevance

---

## Example raw situations

- "my teammate disappeared before submission"
- "we’re bored in hostel"
- "my birthday plans are collapsing"
- "it’s India vs Pakistan match night"
- "I need something dramatic and funny"
- "my group cannot plan one simple thing properly"
- "I want to laugh at today before I sleep"

---

## Situation interpretation schema

For every raw situation, the system should produce:

- `primary_conflict_type`
- `social_context_type`
- `absurdity_level`
- `emotional_flavor`
- `event_relevance`
- `recommended_mode`
- `recommended_frame_candidates`
- `recommended_companion_modes`
- `continuity_relevance`
- `artifact_potential`

---

## Field definitions

### `primary_conflict_type`
Possible values:
- none
- coordination_failure
- social_chaos
- overthinking
- event_escalation
- celebration_disruption
- boredom
- identity_drama
- momentum_drop

### `social_context_type`
Possible values:
- solo
- duo
- group
- event_crowd
- unclear

### `absurdity_level`
Possible values:
- low
- medium
- high

### `emotional_flavor`
Possible values:
- playful
- frustrated
- celebratory
- tense
- spiraling
- restless
- dramatic
- low-energy

### `event_relevance`
Possible values:
- none
- personal
- social
- live_event
- festive

### `recommended_mode`
Possible values:
- today_episode
- squad_mode
- what_next
- live_moment
- challenge_me

### `recommended_frame_candidates`
Possible values:
- episode
- roast_court
- squad_saga
- cinematic_reinterpretation
- chaos_ranking
- recap
- cliffhanger
- comeback_arc
- dramatic_reveal

### `recommended_companion_modes`
Possible values:
- host
- narrator
- hype
- savage_commentator
- judge_verdict
- chill_recap
- continuity_keeper

### `continuity_relevance`
Possible values:
- none
- low
- medium
- high

### `artifact_potential`
Possible values:
- low
- medium
- high

---

# Part C — Situation-to-routing examples

## Example 1
Input:
"my teammate disappeared before submission"

Expected interpretation:
- primary_conflict_type: coordination_failure
- social_context_type: group
- absurdity_level: high
- emotional_flavor: frustrated
- event_relevance: none
- recommended_mode: today_episode
- recommended_frame_candidates: episode, survival_scene, chaos_ranking
- recommended_companion_modes: narrator, savage_commentator
- continuity_relevance: medium
- artifact_potential: high

---

## Example 2
Input:
"we’re bored in hostel"

Expected interpretation:
- primary_conflict_type: boredom
- social_context_type: group
- absurdity_level: medium
- emotional_flavor: restless
- event_relevance: none
- recommended_mode: squad_mode
- recommended_frame_candidates: squad_saga, chaos_ranking, roast_court
- recommended_companion_modes: host, judge_verdict
- continuity_relevance: low
- artifact_potential: high

---

## Example 3
Input:
"my birthday plans are collapsing"

Expected interpretation:
- primary_conflict_type: celebration_disruption
- social_context_type: group
- absurdity_level: medium-high
- emotional_flavor: dramatic
- event_relevance: personal
- recommended_mode: today_episode
- recommended_frame_candidates: dramatic_reveal, cinematic_reinterpretation, comeback_arc
- recommended_companion_modes: narrator, hype
- continuity_relevance: medium
- artifact_potential: high

---

## Example 4
Input:
"it’s India vs Pakistan match night"

Expected interpretation:
- primary_conflict_type: event_escalation
- social_context_type: event_crowd
- absurdity_level: medium
- emotional_flavor: celebratory
- event_relevance: live_event
- recommended_mode: live_moment
- recommended_frame_candidates: rivalry_scene, reaction_court, squad_saga
- recommended_companion_modes: hype, judge_verdict
- continuity_relevance: low-medium
- artifact_potential: high

---

## Example 5
Input:
"I need something dramatic and funny"

Expected interpretation:
- primary_conflict_type: none
- social_context_type: solo
- absurdity_level: medium
- emotional_flavor: dramatic
- event_relevance: none
- recommended_mode: today_episode
- recommended_frame_candidates: episode, cinematic_reinterpretation, dramatic_reveal
- recommended_companion_modes: narrator, host
- continuity_relevance: low
- artifact_potential: medium

---

# Part D — Routing decision rules

## Rule 1
If social_context_type is group and absurdity_level is medium or high, strongly consider:
- squad_mode
- judge_verdict
- squad_saga or chaos_ranking frames

## Rule 2
If mood is decompression or overthinking, favor:
- chill_recap or narrator
- lower-energy pacing
- compact outputs
- lighter artifact tone

## Rule 3
If event relevance is festive or live_event, increase:
- hype energy
- expressive framing
- artifact brightness
but preserve compactness.

## Rule 4
If conflict type is coordination_failure or social_chaos, artifact potential is often high.

## Rule 5
If continuity relevance is high, prefer frames that naturally create hooks:
- comeback_arc
- cliffhanger
- unresolved aftermath

## Rule 6
If the user asks for “dramatic,” increase theatricality but do not sacrifice readability.

---

# Part E — What this matrix gives to the system
This routing matrix gives Phase 3 and later phases:
- a mood router
- a situation interpreter
- a frame-selection basis
- a companion-mode-selection basis
- a pacing basis
- a safety-aware transformation foundation

Without this, generation would be much more generic.

---

## Final summary
The RANGMANCH routing system now knows how to move from:
- mood
- raw situation
- social context
- event state

into:
- companion posture
- entertainment frame
- pacing
- artifact potential
- and continuity relevance

That is the beginning of real intelligence behavior.