# AGENTS.md

## Purpose

This file is the canonical repository guidance for human contributors and AI coding agents working on the DCE Engineering Review Agent.

The objective is to improve the repository without weakening engineering governance, source traceability, stage awareness, evidence requirements, or human decision authority.

## Read Before Making Changes

Review these files before modifying behaviour:

1. `README.md`
2. `AGENTS.md`
3. the active agent instructions under `agent/` or the maintained orchestration prompt under `prompts/`
4. `docs/Architecture.md`
5. `docs/Workflow.md`
6. `docs/DCE-Review-Handoff-Record.md`
7. `docs/adr/ADR-001-Reference-Confirmation-Workflow.md`
8. `docs/adr/ADR-002-Governing-Source-Precedence.md`
9. `docs/adr/ADR-003-Multi-Skill-Review-Architecture.md`
10. `docs/adr/ADR-004-Upload-First-Optional-Classification.md`
11. all four files under `skills/`
12. `evaluations/Review-Evaluation-Criteria.md`
13. affected scenarios under `examples/`

Where repository paths differ, locate the file by name before making a change. Do not create a duplicate canonical file merely to satisfy an assumed path.

## Canonical Architecture

Always model the solution as four coordinated skills sharing one DCE Review Handoff Record:

1. `dce-review-intake`
2. `dce-general-technical-review`
3. `dce-cde-deviation-review`
4. `dce-review-output`

Required flow:

```text
Upload or reference package
          |
          v
  dce-review-intake
          |
          v
DCE Review Handoff Record
          |
   +------+------+
   |             |
   v             v
General       Deviation
Review        Review
   |             |
   +------+------+
          |
          v
  dce-review-output
```

A package may use the General route, the Deviation route, or both as a Hybrid route. Output must not finalise until every selected route is complete.

## Mandatory Invariants

### Reference Confirmation

Perform reference confirmation before issuing definitive compliance conclusions. Confirm source applicability, revision, form factor, project context, and design stage where material to the conclusion.

If applicability is unresolved, use explicit provisional language and keep the affected conclusion open.

### Governing Source Precedence

Apply confirmed sources in this order:

1. Regulatory and AHJ requirements
2. Approved deviations, technical exceptions, and Tech Gov decisions
3. Approved project specifications and BOD
4. Applicable Engineering Bulletins and amendments
5. Microsoft Master Specifications
6. Applicable programme or form-factor BOD
7. Approved MTS baseline
8. Vendor submission
9. Consultant comments

A lower-precedence source cannot override a higher-precedence source without an approved decision. Do not resolve equal-precedence conflicts by date alone.

### Evidence Integrity

Do not invent or silently infer:

- requirements;
- clauses;
- values;
- thresholds;
- dimensions;
- setpoints;
- redundancy criteria;
- performance targets;
- acceptance criteria;
- approvals; or
- precedent.

Record the evidence gap, request confirmation where material, and qualify the affected conclusion.

### Upload-First Intake

File upload is the primary intake action. Submission type, discipline, project, region, form factor, review scope, and output format are optional hints.

Missing selections must not block review. Document evidence takes precedence over unsupported user-interface selections.

### Stage-Appropriate Review

Assess the submission against the level of definition reasonably expected for the confirmed design stage. Do not request IFC-level detail at Concept, BOD, SDD, 30%, or equivalent stages unless the governing basis requires it.

### Finding Integrity

Each material finding must preserve:

- unique finding ID;
- originating route;
- severity;
- finding category;
- closure status;
- governing source and clause where available;
- exact submission locator;
- requirement or issue;
- vendor and A/E position;
- evidence and gap;
- technical and business effect;
- required closure evidence;
- response party;
- decision owner; and
- cross-linked finding IDs where applicable.

Finding category and closure status are separate fields and must not be merged.

### Closure

Close a finding only when revised documentation, calculations, responses, test evidence, or an authorised decision sufficiently addresses the issue.

A statement of intent alone is not closure unless accepted through the governing process.

### Authority Boundary

The agent provides evidence-based, non-binding guidance. Final approval, deviation, waiver, and disposition remain with the authorised DCE engineer or governance authority.

The repository must never imply that the agent has final engineering authority.

## Hybrid Review Requirements

For a genuine Hybrid package:

- intake selects both routes;
- both routes consume the same handoff record;
- each route preserves its own finding IDs;
- related findings are cross-linked rather than merged;
- neither route overwrites the other route's findings;
- output waits for both routes to complete; and
- the authorised decision owner remains explicit.

## Materiality and Owner-Side Review

Prioritise findings affecting:

- compliance;
- safety;
- reliability;
- operability;
- maintainability;
- capacity;
- redundancy;
- constructability;
- cost;
- schedule;
- commissioning;
- future approvals; and
- business outcome.

Avoid immaterial editorial comments and unsupported preferences.

## Files That Must Change Together

When changing routing, governing basis, finding fields, closure logic, authority boundaries, or disposition logic, assess and update the following together:

- active agent instructions;
- the affected skill files;
- `docs/Architecture.md`;
- `docs/Workflow.md`;
- `docs/DCE-Review-Handoff-Record.md`;
- applicable ADRs;
- `evaluations/Review-Evaluation-Criteria.md`;
- affected example scenarios;
- `README.md`; and
- repository validation rules.

Do not update only one representation of a behavioural rule.

## Evaluation Requirements

Every material behavioural change must have at least one scenario demonstrating:

- input conditions;
- expected intake classification;
- expected governing-basis status;
- expected route;
- expected finding category;
- expected closure status;
- prohibited behaviour; and
- success criteria.

Evaluation coverage must include:

- upload-first intake;
- unconfirmed applicability;
- lower-precedence source conflict;
- equal-precedence conflict;
- missing essential evidence;
- revision delta and undeclared change;
- formal deviation;
- hybrid routing and cross-linking;
- output sequencing;
- premature closure prevention;
- premature approval prevention; and
- specialist or Tech Gov escalation.

## Public Repository Information Boundary

Do not commit:

- Microsoft Confidential or highly confidential content;
- project-specific drawings, calculations, specifications, or review comments;
- proprietary standards or specification text;
- restricted physical-security information;
- credentials, tokens, environment identifiers, or private links;
- personal information; or
- vendor-confidential information.

Use synthetic, redacted, or explicitly approved examples.

## Validation

Run after every material change:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/validate-repo.ps1
```

Do not state that validation passed unless the command completed successfully.

Also inspect:

```text
git diff --check
git status
git diff --cached --stat
```

## Definition of Done

A change is complete only when:

- the architecture remains internally consistent;
- all affected files are updated together;
- governing-source precedence is unchanged or an ADR records the approved change;
- authority boundaries remain explicit;
- no unsupported requirement or conclusion has been introduced;
- scenarios cover the changed behaviour;
- validation passes;
- no confidential or project-sensitive material is included; and
- the pull request explains what changed, why it changed, governance impact, validation performed, and remaining limitations.
