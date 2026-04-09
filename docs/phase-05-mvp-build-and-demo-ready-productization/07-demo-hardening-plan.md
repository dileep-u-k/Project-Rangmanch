# 07 — Demo-Hardening Plan

## Purpose of this document
This document defines how the Phase 5 MVP of Project RANGMANCH is hardened for live demo use.

Its purpose is to specify:
- how the main flows are stabilized
- how variance is reduced in demo-critical moments
- how fallback behavior protects the presentation
- and how the prototype can be shown with confidence

---

## Why this document matters
A prototype that works casually may still fail in live demo if:
- outputs vary too much
- loading is awkward
- transitions are confusing
- artifact screens feel weak
- continuity fails to appear
- or the strongest proof screens are buried

For a case study, the MVP must be demo-stable.

---

# Demo-hardening rules

## Rule 1
The main three demo flows must always work:
- Flow A — Episode
- Flow B — Squad
- Flow C — Continuity / Archive

## Rule 2
Demo-critical screens should be visually strong even in fallback mode.

## Rule 3
Never allow blank or broken intermediate screens.

## Rule 4
Seeded or normalized outputs are acceptable if they improve reliability without weakening the product story.

## Rule 5
Transitions and CTAs must remain predictable.

---

# Demo-hardening tasks

## Task 1 — Stabilize data entry
Use predictable example inputs and preserve them where helpful.

## Task 2 — Stabilize output quality
Use schema-guarded generation and fallback-safe content.

## Task 3 — Stabilize artifacts
Artifact output must always remain readable and visually compelling.

## Task 4 — Stabilize continuity
A return hook should always be visible after a completed act.

## Task 5 — Stabilize navigation
The user should always know the next action.

---

## Final summary
Demo-hardening in Phase 5 is not over-engineering.
It is execution discipline.

The goal is a prototype that can be shown repeatedly with confidence.