# RANGMANCH AI Core

This package contains the production-grade intelligence contracts for Project RANGMANCH.

## Purpose
The `ai-core` package is responsible for defining:
- structured output contracts
- input contracts
- companion state contracts
- routing logic skeletons
- memory layer contracts
- safety and tone guard contracts
- repetition and freshness control interfaces
- prompt template contracts

It is intentionally created in Phase 3 so that later phases can implement the prototype on top of stable AI-system definitions.

## What this package is not
This package is not yet:
- a deployed backend
- a live inference server
- a frontend layer
- or a full database implementation

It is the intelligence contract layer.

## How to install
From inside `ai-core/`:

```bash
pnpm install