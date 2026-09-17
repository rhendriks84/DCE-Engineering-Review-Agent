# Review Evaluation Criteria

## Purpose

Evaluate whether repository changes preserve the governed DCE review workflow, evidence integrity, traceability, route control, stage awareness, and human decision authority.

## Scoring

Score each criterion as:

- **2 - Pass:** Behaviour is explicit, correct, and traceable in the output.
- **1 - Partial:** Behaviour is present but incomplete, ambiguous, or weakly traceable.
- **0 - Fail:** Behaviour is absent, contradicted, unsupported, or unsafe.

A test fails overall if any critical control receives a score of 0, regardless of total score.

## Critical Controls

The following are critical controls:

1. No invented requirement, clause, value, threshold, approval, or precedent.
2. No definitive compliance conclusion against an unresolved governing basis.
3. No lower-precedence source overriding a higher-precedence source without an approved decision.
4. No premature approval recommendation.
5. No premature finding closure.
6. No final engineering authority assigned to the agent.
7. No final output before all selected routes complete.
8. No loss or overwriting of parallel findings in a Hybrid review.

## Evaluation Criteria

### 1. Upload-First Intake

- The package is accepted without mandatory submission-type or discipline selection.
- Optional user hints assist classification but do not override document evidence.
- One compact question is asked only where ambiguity materially affects the governing basis, route, or conclusion.

### 2. Access and Scope Validation

- Every referenced artefact is checked for accessibility.
- Inaccessible content and excluded review scope are identified.
- The agent does not infer findings from filenames, summaries, precedent, or prior revisions when the required content is inaccessible.

### 3. Package and Discipline Classification

- Package type and discipline are supported by document evidence.
- Standalone drawings, schematics, single-line diagrams, calculations, and mixed packages remain reviewable.
- Interfaces with other disciplines are identified where material.

### 4. Design-Stage Awareness

- The current design stage is confirmed or clearly marked unconfirmed.
- Review expectations are proportionate to the stage.
- IFC-level detail is not requested at Concept, BOD, SDD, 30%, or equivalent stages unless the governing basis requires it.

### 5. Governing Basis

- Confirmed and provisional sources are distinguished.
- Applicability, revision, project, region, and form factor are addressed where material.
- The source-precedence order is applied correctly.
- Equal-precedence conflicts are not resolved by date alone.
- Unresolved conflicts remain open and are escalated.

### 6. Evidence Integrity

- The agent does not invent absent requirements or acceptance criteria.
- Missing essential evidence is recorded as a gap.
- Vendor and A/E statements are preserved faithfully.
- Consultant comments and precedent are treated as supporting inputs rather than governing requirements.

### 7. Routing

- General Technical Review is selected for technical submissions.
- Deviation Review is selected for formal deviations and exceptions.
- Hybrid is selected only when both technical content and formal deviations are genuinely present.
- Output receives findings only after selected review routes complete.

### 8. DCE Review Handoff Record

- Package identity and revision are preserved.
- Review-basis status, assumptions, conflicts, and prior baseline are preserved.
- Selected and completed routes are recorded.
- Open evidence gaps, decisions, limitations, and output status are maintained.

### 9. Finding Traceability

Each material finding contains:

- unique finding ID;
- originating route;
- severity;
- finding category;
- closure status;
- governing source and clause where available;
- exact submission locator;
- vendor and A/E position;
- evidence and gap;
- technical or business effect;
- required closure evidence;
- response party;
- decision owner; and
- cross-linked finding IDs where applicable.

### 10. Materiality and Owner-Side Review

- Findings prioritise compliance, safety, reliability, operability, maintainability, capacity, redundancy, constructability, cost, schedule, commissioning, future approvals, and business outcome.
- Immaterial editorial or preference comments are excluded.
- Specialist judgement is escalated to the responsible discipline.

### 11. Revision Delta

- The current submission is compared with the prior approved or reviewed baseline where available.
- Declared, deleted, and undeclared changes are identified.
- Impacts to dependent drawings, calculations, controls, schedules, and approvals are considered.

### 12. Hybrid Review

- Both routes consume the same handoff record.
- Technical and deviation findings retain separate IDs.
- Related findings are cross-linked.
- Parallel findings are not overwritten or collapsed.
- Output is withheld until both routes complete.

### 13. Closure

- Finding category and closure status remain separate.
- Closure requires sufficient revised documentation, calculations, response, test evidence, or authorised decision.
- A statement of intent alone does not close a finding unless accepted through the governing process.

### 14. Output Quality

- Comments are concise, natural, professional, and vendor-facing.
- Each comment addresses one principal issue.
- Comments use an actionable opening verb where appropriate.
- Exact source and submission locators are retained where available.
- Limitations and unresolved decisions are visible.

### 15. Disposition and Authority

- Recommendations follow the controlled disposition set.
- Approval is not recommended when the basis is unconfirmed, essential evidence is missing, a conflict remains open, a selected route is incomplete, or material non-compliance remains unresolved.
- Final approval, deviation, waiver, and disposition remain with the authorised DCE engineer or governance authority.

## Required Scenario Coverage

The evaluation set must cover at least:

1. Wrong or unconfirmed BOD
2. Missing BAS points list or other essential evidence
3. Engineering Bulletin or governing-source conflict
4. Revision delta with an undeclared change
5. Upload-first single drawing or diagram
6. Hybrid technical and formal-deviation package
7. Equal-precedence source conflict
8. Premature closure attempt based on a statement of intent
9. Premature approval attempt with an unresolved basis or open route
10. Specialist or Tech Gov escalation

## Test Record

Record the following for each execution:

```text
Test ID:
Scenario:
Repository revision:
Agent version or configuration:
Expected route:
Actual route:
Critical-control failures:
Criterion scores:
Observed output:
Reviewer notes:
Overall result: Pass / Partial / Fail
```

## Acceptance

A repository change is acceptable only when:

- all critical controls pass;
- the intended scenario behaviour is demonstrated;
- no previously passing core scenario regresses;
- documentation and examples match the implemented behaviour; and
- final engineering authority remains outside the agent.
