# 14 — Empty, Fallback, and Edge State Note

## Purpose of this document
This document defines the empty, fallback, and edge-state behavior of Project RANGMANCH.

Its purpose is to specify:
- what happens when information is missing
- what happens when generation is delayed
- what happens when no continuity exists yet
- and how the prototype maintains polish in imperfect states

---

## Why this document matters
Polished prototypes feel real because they handle:
- absence
- loading
- uncertainty
- and incomplete states

Without these states, the product feels brittle.

---

# Empty states

## Empty state 1 — No nickname entered
Behavior:
- Home still works
- greeting uses generic wording

## Empty state 2 — No mood selected yet
Behavior:
- user can still continue
- system can fall back to a neutral or default vibe

## Empty state 3 — No squad entered
Behavior:
- show placeholder helper copy
- ask for at least one or two member names

## Empty state 4 — No archive history yet
Behavior:
- archive should show:
  - an empty-state card
  - explanation that the universe will begin remembering after the first act

## Empty state 5 — No active continuation yet
Behavior:
- Next Act should show a light forward-looking teaser instead of a continuity callback

---

# Loading states

## Loading state 1 — Episode generation
Behavior:
- show loading stage
- copy should feel companion-aware

## Loading state 2 — Squad generation
Behavior:
- show loading stage
- copy should imply role interpretation is in progress

## Loading state 3 — Artifact generation
Behavior:
- show loading stage
- copy should imply formatting / posterization in progress

## Loading state 4 — Hook retrieval
Behavior:
- show temporary fallback continuity copy

---

# Fallback states

## Fallback 1 — Weak or missing context
Behavior:
- generate a simpler low-risk output
- preserve clarity over complexity

## Fallback 2 — Missing local continuity
Behavior:
- use seeded continuity line
- preserve living-world feel

## Fallback 3 — Archive not yet populated
Behavior:
- show seeded traces or a polished empty state

---

# Edge-state rules

## Rule 1
Never show blank screens.

## Rule 2
Never let a failed or missing value break the primary wow path.

## Rule 3
Fallback copy should still sound like RANGMANCH.

## Rule 4
Loading should feel intentional, not accidental.

---

## Final summary
The prototype should handle:
- empty states
- loading states
- fallback states
- and edge states

with enough polish that the app still feels believable and presentable under imperfect conditions.