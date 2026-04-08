# 01 — Phase 4 Design Plan

## Purpose of this document
This document defines the working plan for Phase 4.

Its purpose is to ensure that RANGMANCH’s interface system is designed as a coherent branded product rather than a collection of disconnected screens.

## Phase 4 mission
Turn the product blueprint and intelligence contracts into a prototype-ready mobile experience system.

## What this phase must define

### A. Information architecture
The app’s top-level structure:
- Onboarding
- Home / Universe
- Today’s Episode
- Squad Mode
- Artifact / Share
- Continuity / Next Act
- Archive / Memory
- Profile / Companion Styling

### B. Screen system
Detailed screen definitions for:
- onboarding flow
- home hub
- episode flow
- squad flow
- artifact screen
- continuity screen
- archive screen

### C. Navigation model
The MVP should keep primary navigation simple and focused on:
- Home
- Episode
- Squad
- Archive or Next Act

### D. Interaction system
Patterns such as:
- quick chips
- mode cards
- branching buttons
- tap-to-reveal
- save/share actions
- continue-arc CTAs

### E. Visual language
Define:
- world aesthetic
- typography hierarchy
- card system
- color and mood logic
- motion language

### F. Companion interface behavior
Define how the companion appears and speaks without turning the app into a generic chat screen.

### G. Prototype architecture
Define:
- routes
- state flow
- mock vs real generation boundaries
- local persistence
- schema-based rendering
- demo-safe fallback data

### H. Demo-first design
Freeze the exact demo flows:
- onboarding -> episode -> artifact -> hook
- squad -> social result -> share
- archive / next act -> continuity proof

## Coding scope in this phase
This phase should include a real Flutter app shell with:
- routes
- theme
- base screens
- shared widgets
- mocked services
- local continuity storage abstraction
- demo-seeded data

It does not yet need:
- live backend integration
- final production AI calls
- final production storage
- full polish on every optional screen

## Working rule
Phase 4 must optimize for:
- clarity
- wow
- differentiation
- demo smoothness
- artifact strength
- and believable product feel