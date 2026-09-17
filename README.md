# DCE Engineering Review Agent

## Review Basis Before Review Findings

The DCE Engineering Review Agent is a governed, engineer-in-the-loop review framework for Microsoft DCE technical submissions.

Engineering reviews can produce invalid conclusions when they are performed against the wrong BOD, specification revision, form factor, approved deviation, or project basis. This agent therefore does not begin with a compliance opinion. It first validates document access, classifies the package, confirms or qualifies the governing review basis, applies source-precedence controls, and selects the correct review route.

Only after those controls are established does the agent produce technical findings or vendor-facing comments.

## Problem

DCE reviews may require engineers to reconcile:

- regulatory and AHJ requirements;
- approved deviations, technical exceptions, and Tech Gov decisions;
- approved project specifications and BOD requirements;
- Engineering Bulletins and amendments;
- Microsoft Master Specifications;
- programme or form-factor BOD requirements;
- approved MTS baselines;
- vendor submissions; and
- consultant comments.

These sources do not have equal authority. Applicability may be unclear, revisions may conflict, evidence may be incomplete, and technical content may be mixed with formal deviations. A generic document-review workflow can therefore produce findings that appear precise but are based on the wrong authority or unsupported assumptions.

## Solution

The repository implements four coordinated skills that exchange one DCE Review Handoff Record:

```text
Uploaded or referenced package
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
 dce-general-   dce-cde-
 technical-     deviation-
 review         review
       |             |
       +------+------+
              |
              v
      dce-review-output
              |
              v
 Controlled DCE deliverable
              |
              v
 Authorised engineer or governance decision
```

### 1. Intake

`dce-review-intake`:

- accepts uploaded or referenced files without requiring the user to classify them first;
- validates access and identifies excluded scope;
- establishes project, region, form factor, discipline, package type, revision, purpose, deliverable, and design stage where evidence permits;
- selects relevant knowledge locations;
- establishes the governing review basis and identifies unresolved applicability;
- selects the General, Deviation, or Hybrid route; and
- creates the DCE Review Handoff Record.

### 2. General Technical Review

`dce-general-technical-review` assesses technical submissions such as MTS packages, drawings, schematics, calculations, controls/BAS packages, commissioning material, and vendor responses.

The review is stage-aware and materiality-focused. It considers compliance, safety, reliability, operability, maintainability, interfaces, capacity, redundancy, constructability, cost, schedule, commissioning, future approvals, and business outcome.

### 3. Deviation Review

`dce-cde-deviation-review` evaluates CDE and D&E forms, technical exceptions, compliance matrices, vendor exception registers, and other packages containing formal departures.

The skill preserves the vendor and A/E position, identifies the governing requirement and proposed departure, assesses technical and business effects, defines required closure evidence, and identifies the authorised decision path without approving the deviation.

### 4. Controlled Output

`dce-review-output` runs only after every selected route is complete. It verifies finding completeness, closure status, materiality, authority boundaries, and disposition logic before producing the requested deliverable.

## Governing Source Precedence

Confirmed sources are applied in this order:

1. Regulatory and AHJ requirements
2. Approved deviations, technical exceptions, and Tech Gov decisions
3. Approved project specifications and BOD
4. Applicable Engineering Bulletins and amendments
5. Microsoft Master Specifications
6. Applicable programme or form-factor BOD
7. Approved MTS baseline
8. Vendor submission
9. Consultant comments

A lower-precedence source cannot override a higher-precedence source without an approved decision. Equal-precedence sources are not ranked by date alone. Unreconciled conflicts remain open and are escalated to the authorised DCE engineer or governance authority.

When applicability is unconfirmed, the framework uses explicit labels such as:

- **Proposed provisional review basis, applicability to be confirmed**
- **Reference basis unresolved**
- **Provisional assessment only**
- **DCE confirmation required**

## DCE Review Handoff Record

The DCE Review Handoff Record is the controlled shared state for the workflow. It carries:

- package identity and revision;
- access status and exclusions;
- project context and design stage;
- confirmed and provisional review sources;
- conflicts, assumptions, and prior baselines;
- selected and completed routes;
- requested deliverable;
- uniquely identified findings;
- exact submission locators;
- evidence gaps and closure requirements;
- response parties and decision owners;
- cross-links between related findings;
- review limitations; and
- output status.

Each selected route appends findings without overwriting parallel findings. Hybrid findings remain separate and cross-linked.

## Supported Review Modes

The framework supports:

- Bluebeam Comments;
- DCE Comments Only;
- Email Comments Only;
- Open Item Register;
- Revision Delta Review; and
- Full Review.

Consultant drawings, plans, schematics, and single-line diagrams default to concise Bluebeam/ACC-ready comments. Each comment addresses one principal issue and begins with an actionable verb such as **Provide**, **Confirm**, **Demonstrate**, **Clarify**, **Revise**, **Identify**, **Reconcile**, **Submit**, or **Update**.

## Non-Binding Dispositions

When requested, the framework may provide one of the following non-binding recommendations:

- Approve
- Approve as Noted
- Revise and Resubmit
- Specialist or multidisciplinary review required
- Escalate for DCE decision
- Escalate for Tech Gov decision
- Reference basis not sufficiently confirmed

Approval is not recommended when the governing basis is unconfirmed, essential evidence is missing, a selected route remains incomplete, a source conflict remains open, or material non-compliance remains unresolved.

Final approval, deviation, waiver, and disposition authority remains with the authorised DCE engineer or governance authority.

## Evaluation Scenarios

The `examples` directory provides scenario-based evaluation fixtures:

1. Wrong or unconfirmed BOD
2. Missing BAS points list
3. Engineering Bulletin conflict
4. Revision delta with an undeclared change
5. Upload-first electrical single-line diagram
6. Hybrid technical and formal-deviation package

The evaluation criteria test upload-first intake, evidence-supported classification, governing-basis controls, provisional-source handling, route selection, finding traceability, revision-delta review, hybrid cross-linking, output sequencing, actionable comments, and non-binding authority boundaries.

## Repository Map

```text
.github/                 GitHub governance and validation workflow
agent/                   Copilot App orchestration instructions, where included
prompts/                 Maintained prompt material, where applicable
skills/                  Four canonical review skills
docs/                    Architecture, workflow, handoff record, ADRs, and guidance
evaluations/             Behavioural evaluation criteria and manifests
examples/                Synthetic scenario-based evaluation fixtures
scripts/                 Deterministic repository validation
AGENTS.md                 Canonical repository guidance for AI and human contributors
CONTRIBUTING.md           Contribution and information-handling requirements
README.md                 Project entry point and judging narrative
```

## Repository Invariants

Changes must preserve:

- reference confirmation before definitive compliance conclusions;
- governing-source precedence;
- upload-first intake;
- the four-skill architecture;
- one shared DCE Review Handoff Record;
- separation of finding category and closure status;
- preservation of parallel and cross-linked findings;
- stage-appropriate review expectations;
- evidence-based closure;
- controlled, non-binding disposition logic; and
- final human engineering authority.

See `AGENTS.md` for the complete change contract.

## Validation

Run the repository validator after changing instructions, skills, architecture, routing, schemas, examples, or evaluations:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/validate-repo.ps1
```

Do not claim that validation passed unless the command completed successfully.

## Public Repository Boundary

This repository demonstrates architecture, governance, workflow, and synthetic evaluation scenarios. Do not commit confidential Microsoft requirements, project-specific submissions, live review comments, restricted security information, credentials, private links, personal information, or vendor-confidential material.

## Current Limitations

- The framework provides non-binding review support and does not replace authorised engineering judgement.
- Definitive conclusions depend on accessible, applicable, and confirmed source material.
- Specialist or multidisciplinary issues require review by the responsible discipline.
- Synthetic examples demonstrate expected behaviour but do not reproduce confidential project content.
