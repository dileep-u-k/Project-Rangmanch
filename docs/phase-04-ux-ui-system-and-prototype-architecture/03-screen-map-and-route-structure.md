# 03 — Screen Map and Route Structure

## Purpose of this document
This document defines the route and screen structure of the Phase 4 prototype.

Its purpose is to specify:
- exact MVP screens
- route relationships
- transitions between screens
- and which screens are active versus placeholder in the prototype

---

## MVP route map

### Entry route
- `/` -> Onboarding

### Primary hub
- `/home` -> Home / Universe

### Episode routes
- `/episode/setup`
- `/episode/experience`
- `/episode/outcome`

### Squad routes
- `/squad/setup`
- `/squad/result`

### Portability route
- `/artifact`

### Continuity route
- `/next-act`

### Archive route
- `/archive`

---

## Route roles

| Route | Role |
|---|---|
| `/` | World entry and onboarding |
| `/home` | Central emotional + navigational hub |
| `/episode/setup` | Episode context entry |
| `/episode/experience` | Episode main interactive moment |
| `/episode/outcome` | Episode payoff |
| `/squad/setup` | Squad context entry |
| `/squad/result` | Squad social payoff |
| `/artifact` | Shareable artifact surface |
| `/next-act` | Continuity / return proof |
| `/archive` | Memory / recap proof |

---

## Prototype-state interpretation

For the current prototype phase:
- Onboarding and Home should be real screens now
- Episode and Squad routes may remain placeholder until their dedicated part
- Artifact, Next Act, and Archive may remain lighter until their dedicated part

This is acceptable as long as the route skeleton is already stable.

---

## Transition logic

### First-time user
`/` -> `/home`

### Solo wow flow
`/home` -> `/episode/setup` -> `/episode/experience` -> `/episode/outcome` -> `/artifact` -> `/next-act`

### Social proof flow
`/home` -> `/squad/setup` -> `/squad/result` -> `/artifact`

### Continuity proof flow
`/home` -> `/next-act` -> `/archive`

---

## Route design rules

## Rule 1
Every core route must correspond to a real product surface from Phase 2.

## Rule 2
Every wow/demo route should end in either:
- payoff
- artifact
- hook
or ideally all three.

## Rule 3
The route structure should stay small enough to demo smoothly.

## Rule 4
Placeholder routes are acceptable early, but the route names and flow structure should already be final.

---

## Final summary
The prototype route structure is now frozen around:
- onboarding
- home
- episode
- squad
- artifact
- continuity
- archive

This makes the prototype buildable and demo-ready in stages.