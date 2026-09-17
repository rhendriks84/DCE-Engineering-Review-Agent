# DCE Review Handoff Record

## Purpose

Provide controlled shared state across intake, general technical review, deviation review and output consolidation.

## Required Fields

### Package
- Review ID
- Package title, vendor, project and revision
- Detected package type
- Disciplines
- Model or configuration

### Review Basis
- Confirmed governing sources
- Provisional sources
- Conflicts and assumptions
- Prior approved baseline
- Reference-confirmation status

### Routing
- Selected route: General, Deviation or Hybrid
- Completed routes
- Requested deliverable

### Finding Register
For each finding:
- Finding ID
- Originating route
- Category
- Closure status
- Governing source and clause
- Exact submission locator
- Requirement or issue
- Vendor and A/E position
- Evidence and gap
- Technical effect or risk
- Required closure evidence
- Response party
- Decision owner
- Cross-linked finding IDs

### Control
- Open evidence gaps
- Open DCE or Tech Gov decisions
- Review limitations
- Output status

## Lifecycle

1. Intake creates the record.
2. Each selected review route appends findings without overwriting parallel findings.
3. Related findings are cross-linked.
4. Output verifies completeness, consolidates comments and applies authority checks.
