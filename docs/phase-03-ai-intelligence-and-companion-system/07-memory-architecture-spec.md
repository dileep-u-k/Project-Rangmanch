# 07 — Memory Architecture Spec

## Purpose of this document
This document defines the full memory architecture of Project RANGMANCH.

Its purpose is to specify:
- what memory layers exist
- what belongs in each layer
- how long each layer should persist
- how memory should influence generation
- what should never be remembered
- and how memory stays useful rather than creepy

This is one of the core Phase 3 documents because memory is essential to continuity, personalization, and return logic.

---

## Core principle
Memory in RANGMANCH should support:
- coherence
- familiarity
- continuity
- callbacks
- better fit
- and world feeling

It should not create:
- invasiveness
- emotional burden
- manipulation
- over-persistence
- or stale repetition

The best memory feeling is:
"this knows the shape of my universe"
not
"this remembers too much about me"

---

# Memory layer overview

The official memory architecture of RANGMANCH has five layers:

1. Session Memory
2. Recent Interaction Memory
3. Long-Term Preference Memory
4. Universe Memory
5. Safety Memory

Each layer has a different purpose and retention horizon.

---

# Memory Type A — Session Memory

## Purpose
Maintain coherence within the current active flow.

## Stores
- current mode
- current mood interpretation
- current situation summary
- selected frame
- current cast
- branch choices
- current payoff state
- artifact seed
- hook seed

## Lifetime
Only the active session.

## Why it matters
Without this, the flow becomes incoherent.

## Should be surfaced?
No, except through the visible experience itself.

---

# Memory Type B — Recent Interaction Memory

## Purpose
Provide short-horizon continuity across recent sessions.

## Stores
- last few episode titles
- recent outcome summaries
- recent artifacts
- recent squad verdicts
- pending hooks
- recent tone patterns
- recent frame history

## Lifetime
Short horizon.
This should be limited and naturally decaying.

## Why it matters
This is the main memory layer for:
- “your last act”
- “pending aftermath”
- “recent squad result”
- “your continuity trace”

## Should be surfaced?
Yes, lightly through:
- Home continuity card
- return hook
- archive preview

---

# Memory Type C — Long-Term Preference Memory

## Purpose
Preserve durable user-style preference and fit.

## Stores
- preferred humor flavor
- preferred dramatic intensity
- preferred pacing
- favorite modes
- typical entry states
- preferred interaction length
- preferred artifact style tendencies

## Lifetime
Long-lived, but editable and refreshable.

## Why it matters
This lets the product feel more fitting over time without needing invasive personal memory.

## Should be surfaced?
Mostly invisible, but may appear in profile/customization later.

---

# Memory Type D — Universe Memory

## Purpose
Store the higher-level continuity of the user’s entertainment world.

## Stores
- current “season” flavor
- active arcs
- iconic prior moments
- recurring social patterns
- recurring squad roles
- rivalry traces
- major callback-worthy world objects

## Lifetime
Medium to long horizon, but selective.

## Why it matters
This is what helps RANGMANCH feel like a living entertainment universe rather than a sequence of unrelated sessions.

## Should be surfaced?
Yes, selectively through:
- Home continuity
- return hooks
- archive
- future season view

---

# Memory Type E — Safety Memory

## Purpose
Preserve safety constraints and boundaries across use.

## Stores
- roast intensity caps
- sensitive content flags
- topics or patterns to avoid
- social-safety guard states
- moderation-related constraints
- anti-repetition toxicity signals

## Lifetime
Durable enough to protect the experience, but should remain minimal and policy-driven.

## Why it matters
Safety memory protects the product from:
- tone drift
- repeated unsafe sharpness
- social harm escalation
- emotionally manipulative continuity

## Should be surfaced?
Mostly invisible.

---

# TTL and decay logic

The system should not treat all memory as equally persistent.

## Session Memory
TTL:
- end of current flow

## Recent Interaction Memory
TTL:
- short horizon
- should decay naturally as new moments replace old ones

## Long-Term Preference Memory
TTL:
- long-lived until overwritten by newer stable patterns

## Universe Memory
TTL:
- selective persistence
- only strong arcs and signature patterns should survive long

## Safety Memory
TTL:
- durable enough to protect behavior
- but should not grow unbounded

---

# What should be remembered

The system should remember:
- strong recent episodes
- strong recent squad verdicts
- preferred humor/tone
- active hooks
- recurring archetypes
- iconic callback-safe moments
- current season flavor
- socially useful recurring labels
- safety guard states

These are useful because they improve:
- continuity
- personalization
- world feeling
- and consistency

---

# What should not be remembered

The system should avoid remembering:
- sensitive personal disclosures
- emotionally intimate vulnerability unless explicitly safe and necessary
- embarrassing specifics that could feel invasive later
- anything that would make squad mode feel socially risky
- anything unnecessary for entertainment continuity

The system should never remember in a way that makes the user feel:
- watched
- judged
- trapped
- or emotionally burdened

---

# Memory surfacing rules

## Rule 1
Not all memory should be surfaced.

## Rule 2
Surfaced memory should be:
- delightful
- lightweight
- recognizable
- product-useful

## Rule 3
Callback usage should be selective.

## Rule 4
Repetition of memory recall should be controlled.

## Rule 5
Safety memory should constrain outputs, not become visible flavor text.

---

# Memory retrieval priorities

When generating a new experience, retrieval priority should generally be:

1. Session Memory
2. Safety Memory
3. Recent Interaction Memory
4. Long-Term Preference Memory
5. Universe Memory

This protects:
- coherence first
- safety second
- continuity third
- deeper world fit fourth

---

# Memory update rules

## Update rule 1
Every completed experience may write:
- one recent interaction trace
- one artifact trace
- one hook seed

## Update rule 2
Long-term preference memory should only update after repeated patterns, not after one-off use.

## Update rule 3
Universe Memory should only update when an experience feels strong enough to become part of the season/world.

## Update rule 4
Safety Memory should update conservatively and only through meaningful guard events.

## Update rule 5
Overwriting and decay must be part of the design, not an afterthought.

---

# Memory quality rules

A good memory system for RANGMANCH should:
- make the world feel alive
- improve fit
- support callbacks
- support return hooks
- stay emotionally light
- decay intelligently
- avoid invasive over-persistence

A bad memory system would:
- repeat too much
- remember things that feel private
- make continuity stale
- or intensify emotional dependence

---

# Relationship to the MVP
The MVP does not need a deep production memory engine.

But it must prove:
- Session Memory
- Recent Interaction Memory
- lightweight Long-Term Preference Memory
- and visible continuity traces

That is enough to demonstrate the concept.

---

## Final summary
The memory architecture of RANGMANCH is now defined as a five-layer system that supports:
- current-flow coherence
- short-horizon continuity
- durable style fit
- living-world progression
- and safety-aware behavior

That is the correct memory foundation for a playful, continuity-rich, non-creepy entertainment companion.