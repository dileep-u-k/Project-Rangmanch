# 15 — Prototype Architecture Note

## Purpose of this document
This document defines the implementation architecture of the Phase 4 RANGMANCH prototype.

Its purpose is to specify:
- routes
- state boundaries
- generation boundaries
- mock vs real responsibilities
- continuity storage assumptions
- and how the app stays stable during demo

---

## Core principle
The prototype should be:
- route-driven
- component-based
- mock-backed where necessary
- continuity-aware
- and easy to evolve in later phases

It should not be:
- tightly coupled
- one-file driven
- or dependent on unstable live generation for demo success

---

# Architecture layers

## Layer 1 — App shell
Contains:
- app entry
- theme
- router
- constants

## Layer 2 — Feature screens
Contains:
- onboarding
- home
- episode
- squad
- artifact
- continuity
- archive

## Layer 3 — Shared widgets
Contains:
- reusable visual building blocks
- banners
- cards
- headers
- buttons
- loading states

## Layer 4 — Core models
Contains:
- episode view data
- squad view data
- artifact view data
- hook view data

## Layer 5 — Services
Contains:
- generation service
- continuity service
- demo seed service

## Layer 6 — Local storage
Contains:
- nickname persistence
- last mood persistence
- last hook persistence

---

# Mock vs real boundary

## Real enough in MVP
- routes
- screen hierarchy
- local persistence
- app theme
- shared component system
- demo flow progression

## Mocked for stability
- actual AI generation
- full continuity engine
- live artifact generation logic
- full archive history engine

This is the right tradeoff for a case-study prototype.

---

# State-flow guidance

## Onboarding
- persists nickname
- persists last mood

## Episode
- setup screen gathers input
- controller/service resolves seeded episode
- outcome transition uses stable mocked payoff

## Squad
- setup screen gathers cast names
- controller/service resolves seeded squad result

## Artifact
- reads seeded artifact

## Next Act
- reads continuity service output
- can use stored hook override if present

---

# Demo-stability rule
The prototype must remain stable even if:
- inputs are minimal
- local memory is empty
- live generation is unavailable

That means seeded demo data remains a valid architecture choice.

---

# Prototype evolution path
This structure is intentionally compatible with later phases:
- replace mock generation service with live inference wrapper
- replace local store with real app persistence
- upgrade archive to real trace history
- replace seeded outputs with contract-driven runtime data

---

## Final summary
The Phase 4 prototype architecture of RANGMANCH is:
- app-shell based
- screen-driven
- component-based
- service-backed
- locally persistent
- and demo-stable

This is the right architecture for a convincing case-study MVP.