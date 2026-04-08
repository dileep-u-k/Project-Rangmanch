# 01 — Phase 3 System Design Plan

## Purpose of this document
This document defines the working plan for Phase 3.

Its purpose is to ensure that the intelligence layer of RANGMANCH is designed as a real system rather than a collection of ad hoc prompts.

## Phase 3 mission
Turn the product blueprint into an intelligence blueprint.

## What this phase must define

### A. Context Understanding Layer
The system must understand:
- mood
- user-entered situation
- time of day
- event state
- chosen mode
- recent interaction state
- social context
- ongoing arc relevance

Its job is to determine what kind of moment this is.

### B. Companion State Layer
The system must determine:
- current persona posture
- energy level
- tone mode
- relationship stance
- whether the companion should act as narrator, host, judge, hype-builder, or recap voice

### C. Entertainment Framing Layer
The system must decide whether the moment becomes:
- an episode
- a roast court
- a squad saga
- a challenge arc
- a dramatic reveal
- a cinematic reinterpretation
- or a cliffhanger continuation

### D. Narrative Construction Layer
The system must build:
- title
- setup
- cast
- interactive branches
- outcomes
- payoff
- and next hook

### E. Personalization Layer
The system must inject:
- humor preference
- pacing preference
- callbacks
- recurring squad roles
- narrative flavor
- relationship-specific tone

### F. Continuity and Memory Layer
The system must define:
- what is remembered
- how long it is remembered
- how it is retrieved
- and how it influences generation

### G. Shareability Layer
The system must shape outputs toward:
- screenshot-worthiness
- clarity
- compactness
- reaction potential

### H. Safety and Tone Governance Layer
The system must constrain:
- harmful escalation
- abusive targeting
- humiliation-style behavior
- emotionally manipulative behavior
- repetitive toxicity
- unsafe roast intensity

## Subsystems that must be designed
1. Mood Interpretation System
2. Situation Interpretation System
3. Companion Persona Engine
4. Episode Generation Engine
5. Squad Dynamics Engine
6. Return Hook Engine
7. Artifact Generation Engine
8. Repetition Control System

## Memory layers that must be designed
- Session Memory
- Recent Interaction Memory
- Long-Term Preference Memory
- Universe Memory
- Safety Memory

## Prompt architecture that must be designed
- onboarding interpretation prompt
- episode generation prompt
- squad output generation prompt
- artifact generation prompt
- return hook prompt
- continuity recall prompt
- alternate-style replay prompt
- safe roast transformation prompt

## Coding scope in this phase
This phase should include code-adjacent implementation for:
- enums and types
- zod schemas
- routing contracts
- memory interfaces
- prompt templates
- safety interfaces
- variation and repetition interfaces

It should not yet require:
- live API integration
- final backend deployment
- frontend integration
- production database implementation

## Working rule
The Phase 3 system must feel:
- AI-native
- structured
- memory-aware
- continuity-capable
- safe
- varied
- and demo-ready in logic