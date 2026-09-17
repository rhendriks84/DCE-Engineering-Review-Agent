# ADR-003: Multi-Skill Review Architecture

## Status
Accepted

## Context

DCE reviews include general technical submissions, formal deviations and hybrid packages. A single monolithic review path makes routing, traceability and maintenance harder.

## Decision

Use four coordinated skills:

1. `dce-review-intake`
2. `dce-general-technical-review`
3. `dce-cde-deviation-review`
4. `dce-review-output`

All skills exchange one DCE Review Handoff Record. Hybrid packages run both review routes before output consolidation.

## Consequences

- Intake, review and output responsibilities are separated.
- Finding category and closure status remain distinct.
- Parallel findings can be cross-linked without being overwritten.
- Output cannot be finalised until every selected route is complete.
- Final engineering authority remains outside the agent.
