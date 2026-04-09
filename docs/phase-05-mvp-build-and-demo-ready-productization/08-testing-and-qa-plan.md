# 08 — Testing and QA Plan

## Purpose of this document
This document defines the testing and QA strategy for the Phase 5 MVP of Project RANGMANCH.

Its purpose is to specify:
- what kinds of testing matter most
- what flows must be repeatedly checked
- what quality risks must be caught before demo
- and how the MVP is stabilized for presentation

---

## Why this document matters
A prototype can look strong in isolated screens but still fail in demo if:
- routing breaks
- continuity disappears
- outputs feel weak
- artifact surfaces look inconsistent
- or the first wow path contains friction

The MVP must therefore be tested not only for correctness, but for:
- clarity
- delight
- stability
- and demo smoothness

---

# Testing categories

## Category 1 — Functional testing
Check:
- routing
- button actions
- loading flows
- local persistence
- artifact rendering
- continuity rendering

## Category 2 — UX testing
Check:
- can a user understand the app quickly?
- does onboarding feel short enough?
- does Home clarify the product immediately?
- does Today’s Episode feel fast enough?
- does Squad Mode feel socially alive?

## Category 3 — Content testing
Check:
- are outputs entertaining?
- are they compact enough?
- are they too repetitive?
- does fallback content still feel branded?

## Category 4 — Demo testing
Check:
- can all 3 core flows be shown smoothly?
- do artifact and continuity screens always appear strong?
- does the prototype recover gracefully if input is weak?

---

# Minimum QA checklist

The team should repeatedly validate:

- Onboarding → Home works
- Episode flow works end to end
- Squad flow works end to end
- Artifact is reachable from both Episode and Squad
- Next Act works after both main flows
- Archive shows believable traces
- Home reflects previous use
- no blank or broken screens appear

---

# Bug handling rule
Fix in this order:
1. broken main demo flow
2. broken continuity visibility
3. weak artifact or weak payoff
4. copy awkwardness
5. lower-priority polish issues

---

## Final summary
Phase 5 testing is not just “does it run?”
It is:
- does it impress?
- does it explain itself?
- and can it survive a demo confidently?