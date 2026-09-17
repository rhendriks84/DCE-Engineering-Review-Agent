# DCE Engineering Review Agent Architecture

## Objective

Provide a modular, engineer-in-the-loop workflow for technical submissions, formal deviations and hybrid packages while preserving governing-source, evidence and decision traceability.

## Four-Skill Architecture

```text
Upload or reference package
          |
          v
dce-review-intake
          |
          v
DCE Review Handoff Record
          |
     +----+----+
     |         |
     v         v
dce-general-  dce-cde-
technical-    deviation-
review        review
     |         |
     +----+----+
          |
          v
dce-review-output
          |
          v
Controlled DCE deliverable
```

## Upload-First Principle

The user may upload a package without selecting submission type or discipline. Optional UI fields are hints, not gates. Intake classifies drawings, schematics, single-line diagrams, calculations, sequences, schedules, datasheets, images, MTS, CDE and mixed packages from content and context.

## Routing

* General technical: MTS, project submittal, drawing, schematic, single-line diagram, calculation, controls/BAS, commissioning, vendor response and other technical content.
* Deviation: CDE, D\&E, technical exception, compliance matrix and vendor exception.
* Hybrid: both routes, operating on one shared handoff record.

## Shared State

The DCE Review Handoff Record is the controlled state passed between skills. It preserves package identity, reference basis, assumptions, routes, findings, owners, evidence gaps and limitations.

## Authority Boundary

All outputs are evidence-based and non-binding. Final approval, deviation, waiver and disposition authority remains with the authorised DCE engineer or governance authority.



