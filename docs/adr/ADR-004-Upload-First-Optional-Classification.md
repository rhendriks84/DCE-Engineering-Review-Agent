# ADR-004: Upload-First Optional Classification

## Status
Accepted

## Context

DCE users may upload drawings, schematics, single-line diagrams, calculations or mixed packages without knowing the formal submission type or discipline.

## Decision

File upload is the primary intake action. Submission type, discipline, project, region, review scope and output format are optional hints. Missing selections shall not block review.

`dce-review-intake` classifies the content, identifies candidate disciplines and routes, and asks one compact question only where ambiguity materially affects the governing basis, route or conclusion.

## Consequences

- The UI shall not require submission-type selection.
- Standalone technical artefacts remain reviewable.
- User hints assist but do not override document evidence.
- Reference confirmation remains mandatory before definitive findings.
