# 11 — Repetition Control Plan

## Purpose of this document
This document defines the repetition-control and freshness-management system of Project RANGMANCH.

Its purpose is to specify:
- what kinds of repetition the system should track
- how it should detect stale outputs
- how it should vary frames, tones, and artifacts
- and how it should preserve both continuity and freshness

This is a critical Phase 3 document because weak AI entertainment products often feel repetitive after just a few uses.

---

## Core principle
RANGMANCH should feel:
- familiar
- continuity-rich
- and still fresh

That means the system must avoid two failure modes:

## Failure mode A — random novelty without continuity
The product feels inconsistent and forgettable.

## Failure mode B — stable continuity without variation
The product feels stale, repetitive, and predictable.

The correct target is:
**continuity with freshness**

---

# Repetition types to track

The system should track at least these repetition classes:

## Type 1 — Frame repetition
Examples:
- too many chaos rankings in a row
- too many “court” structures
- too many dramatic reveal frames

## Type 2 — Joke-pattern repetition
Examples:
- same joke shape
- same phrasing rhythm
- same commentary style repeatedly

## Type 3 — Ending repetition
Examples:
- same outcome tone
- same type of payoff
- same “collapse with style” ending too often

## Type 4 — Squad role repetition
Examples:
- same person repeatedly assigned the same archetype
- same social verdict repeatedly used

## Type 5 — Artifact repetition
Examples:
- same artifact type too often
- same headline shape too often
- same card tone too often

## Type 6 — Return-hook repetition
Examples:
- always using the same “next act” style
- same continuity tease repeatedly

## Type 7 — Companion posture repetition
Examples:
- companion always acting as narrator
- hype mode overused
- savage mode overused

---

# Freshness dimensions

The system should vary freshness across these dimensions:

1. frame family
2. companion posture
3. pacing style
4. humor flavor
5. payoff tone
6. artifact type
7. hook type
8. lexical style
9. squad archetype assignment

Not every dimension must vary every time.
But enough should vary to preserve freshness.

---

# Repetition detection rules

## Rule 1
Detect short-horizon repeats strongly
If the same thing happened in the last 1–3 interactions, penalize it heavily.

## Rule 2
Detect medium-horizon patterns lightly
If something occurs often across the last 5–10 interactions, reduce its selection probability.

## Rule 3
Do not over-penalize continuity objects
Some recurring arcs should remain visible.
The system should distinguish:
- stale repetition
from
- intentional continuity

## Rule 4
For squad mode, repeated role assignment should require evidence
A recurring role should only repeat if:
- it is continuity-useful
- and not overused recently

---

# Variation strategies

## Strategy 1 — Frame variation
Rotate between:
- episode
- recap
- cinematic reinterpretation
- chaos ranking
- reveal
- comeback arc
- squad saga
- roast court
depending on eligibility.

---

## Strategy 2 — Tone variation
Even within the same frame, vary:
- warmth
- sharpness
- theatricality
- pace
- intensity

---

## Strategy 3 — Artifact variation
Rotate artifact types where possible:
- episode poster
- verdict card
- chaos ranking
- dramatic summary card
- squad result card
- next-act card

---

## Strategy 4 — Hook variation
Rotate:
- next act
- unresolved aftermath
- rivalry continuation
- dramatic tease
- world progression
- squad recurrence

---

## Strategy 5 — Lexical variation
Avoid repeating exact phrase patterns too often.

---

# Freshness vs continuity arbitration

When continuity and freshness compete, use these rules:

## Rule A
Continuity objects may stay stable
For example:
- active arcs
- recurring squad flavor
- current season theme

## Rule B
Surface expression should still vary
Even when the same arc continues, the wording, artifact, or hook style should vary.

## Rule C
Strong callback does not justify identical structure
A callback may repeat the world object, but not the same exact presentation.

---

# Repetition-control state to track

The system should maintain lightweight recent-history counters for:
- recent frame types
- recent companion modes
- recent artifact types
- recent hook types
- recent squad roles by member
- recent payoff tones

This is enough to control short-horizon repetition in the MVP.

---

# Freshness quality rules

A fresh output should:
- still feel like RANGMANCH
- not feel disconnected from continuity
- avoid obvious repetition
- preserve readability
- preserve emotional clarity

A bad “freshness” output would:
- become random
- lose the product voice
- break continuity
- or become inconsistent for the sake of variation

---

# MVP freshness scope
The MVP does not need a huge diversity engine.

But it should control:
- recent frame repetition
- companion posture repetition
- squad role overuse
- artifact overuse
- hook overuse

That is enough to make repeated use feel meaningfully stronger.

---

# Anti-staleness rules

## Rule 1
Do not reuse the same frame more than twice in a row unless forced by context.

## Rule 2
Do not reuse the same artifact type more than three times in a short horizon unless variety is unavailable.

## Rule 3
Do not assign the same member the same sharp role repeatedly without continuity reason.

## Rule 4
Do not use the same return-hook type in every session.

## Rule 5
If the companion used savage_commentator recently, lower its probability unless the current context strongly supports it.

---

# What this gives to the AI core
The AI core should implement:
- short-horizon repetition detectors
- frame and mode penalization
- variation selectors
- role diversification logic
- artifact rotation logic
- hook diversification logic

---

## Final summary
RANGMANCH freshness is not about randomness.
It is about managed variation.

The system must remember enough to feel alive, but vary enough to avoid stale repetition.
That balance is essential for a companion-led entertainment product.