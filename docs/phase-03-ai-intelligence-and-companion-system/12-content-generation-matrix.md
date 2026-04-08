# 12 — Content Generation Matrix

## Purpose of this document
This document defines the main generation matrix of Project RANGMANCH.

Its purpose is to map:
- mood
- mode
- frame
- companion posture
- artifact type
- and hook type

into one coherent operational reference.

This is a control and design document for the intelligence layer.

---

## Why this matrix matters
RANGMANCH generation should not be fully improvised.
It should operate inside a guided possibility space.

This matrix helps the system remain:
- fresh
- coherent
- explainable
- and product-native

---

# Content generation matrix

| Mood | Preferred Mode | Preferred Frames | Preferred Companion Modes | Preferred Artifact Types | Preferred Hook Types |
|---|---|---|---|---|---|
| bored | today_episode | episode, dramatic_reveal, challenge_arc | host, narrator | episode_poster, dramatic_summary_card | next_act, dramatic_tease |
| chaotic | today_episode / squad_mode | survival_scene, chaos_ranking, squad_saga | narrator, savage_commentator, judge_verdict | chaos_ranking, verdict_card | unresolved_aftermath, next_act |
| savage | squad_mode | roast_court, chaos_ranking, squad_saga | savage_commentator, judge_verdict | verdict_card, squad_result_card | role_continuation, squad_recurrence |
| chill | today_episode | recap, episode | host, chill_recap | dramatic_summary_card, next_act_card | world_progression, next_act |
| dramatic | today_episode | cinematic_reinterpretation, dramatic_reveal, episode | narrator, hype | episode_poster, dramatic_summary_card | dramatic_tease, next_act |
| overthinking | today_episode | recap, dramatic_reveal, episode | chill_recap, narrator | dramatic_summary_card | world_progression, next_act |
| squad_energy | squad_mode | squad_saga, chaos_ranking, roast_court | judge_verdict, hype | squad_result_card, chaos_ranking | squad_recurrence, role_continuation |
| festival_mode | live_moment / today_episode | episode, comeback_arc, dramatic_reveal | hype, host | episode_poster, next_act_card | world_progression, dramatic_tease |
| match_night | live_moment / squad_mode | rivalry_scene, squad_saga, chaos_ranking | hype, judge_verdict | verdict_card, squad_result_card | squad_recurrence, unresolved_aftermath |
| decompression | today_episode | recap, episode | chill_recap, host | dramatic_summary_card, next_act_card | next_act, world_progression |

---

# Matrix usage rules

## Rule 1
The matrix is a guidance system, not a hard prison.

## Rule 2
Actual frame selection should still depend on:
- raw situation
- recent history
- continuity relevance
- safety constraints
- freshness constraints

## Rule 3
If the matrix and the live context conflict, context wins.

## Rule 4
If safety and the matrix conflict, safety wins.

## Rule 5
If freshness and the matrix conflict, freshness may override second-choice preferences before fully abandoning coherence.

---

# Example operational use

## Example 1
Mood: chaotic  
Mode: today_episode  
Likely route:
- frame: survival_scene
- companion: narrator
- artifact: chaos_ranking
- hook: unresolved_aftermath

## Example 2
Mood: squad_energy  
Mode: squad_mode  
Likely route:
- frame: squad_saga
- companion: judge_verdict
- artifact: squad_result_card
- hook: squad_recurrence

## Example 3
Mood: decompression  
Mode: today_episode  
Likely route:
- frame: recap
- companion: chill_recap
- artifact: dramatic_summary_card
- hook: world_progression

---

# Matrix purpose in the MVP
The MVP only needs a subset of the full matrix to be active.

The MVP should strongly support:
- bored
- chaotic
- dramatic
- overthinking
- squad_energy
- decompression

with modes:
- today_episode
- squad_mode

and artifacts:
- episode_poster
- verdict_card
- chaos_ranking
- squad_result_card
- dramatic_summary_card
- next_act_card

That is enough for a strong first generation layer.

---

## Final summary
The content generation matrix now gives RANGMANCH a guided operating space across:
- moods
- modes
- frames
- companion postures
- artifacts
- and hooks

This helps the system remain intentional rather than purely reactive.