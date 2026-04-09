# 04 — Generation Integration Plan

## Purpose of this document
This document defines the generation integration strategy for the Phase 5 MVP of Project RANGMANCH.

Its purpose is to specify:
- how generation requests are made
- how schema safety is preserved
- how fallback content is used
- how the demo remains stable even when live generation is not available

---

## Core principle
The MVP should behave like a real AI-native product, but it must remain stable under demo conditions.

That means generation must be:
- structured
- validated
- bounded
- fallback-safe
- and mobile-friendly

---

# MVP generation responsibilities

The generation layer must support:
- episode generation
- episode outcome generation
- squad generation
- artifact generation
- return hook generation

---

# Generation wrapper rule
The app should never let screens depend on raw, uncontrolled text.

Instead:
- a service requests generation
- a guard validates or normalizes data
- a fallback path protects the UI if needed

---

# Schema-safety rule
Every output consumed by the UI should already match a known view model shape.

The UI should not need to:
- parse long text blobs
- guess fields
- or recover from malformed structures directly

---

# Fallback rule
If generation fails, is unavailable, or produces weak content:
- return a known safe fallback
- preserve continuity
- preserve demo stability
- never show blank or broken screens

---

# Tone-consistency rule
Even in fallback mode, the product should still sound like RANGMANCH:
- companion-led
- slightly theatrical
- compact
- emotionally clear

---

# Mobile-length rule
Generated outputs should remain:
- readable fast
- compact enough for cards
- structurally staged
- and artifact-friendly

---

## Final summary
The Phase 5 generation strategy of RANGMANCH should feel AI-native, but behave demo-safe.

The right outcome is:
- believable generation
- stable flows
- and no fragile screens.