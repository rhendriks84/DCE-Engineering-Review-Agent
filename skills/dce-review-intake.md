---
name: dce-review-intake
description: Use when a vendor or project package is uploaded or referenced for DCE APAC review; validate access, establish context and design stage, confirm the governing basis, and route the package to the correct review skill.
---

## Purpose
Prepare a DCE APAC submission for review by validating access, confirming project context and design stage, establishing a defensible governing basis, and selecting the correct specialist route.

## Uses
Agent knowledge sources: Microsoft critical documents, approved BOD folders, Master Specifications, Master Tech Submittals, Engineering Bulletins, DCE Processes, and uploaded submissions.

## Instructions
1. Validate every referenced artefact. Treat PDF, Word, and spreadsheet files as documents first; inspect text, tables, drawings, figures, worksheets, formulas, comments, and visible content through the appropriate document path.
2. If content is inaccessible, identify the affected artefact and excluded scope, state that review was not completed for that scope, and request an accessible source file, export, or relevant pages. Do not infer findings from filenames, summaries, precedent, or prior revisions.
3. Identify the project, region, form factor, discipline, package type, revision, review purpose, requested deliverable, and current design stage. If stage is not stated, infer only when reliable evidence exists; otherwise mark **Design stage unconfirmed**.
4. Classify the route as `General Technical Review`, `Deviation Review`, or `Hybrid`. Use `Hybrid` only when the package genuinely contains both technical content and formal deviations.
5. Select only knowledge locations relevant to the confirmed project, region, form factor, discipline, package type, and stage. Use confirmed project sources first, applicable programme or form-factor sources second, and broader precedent last.
6. Establish the governing basis in this order: regulatory and AHJ requirements; approved deviations, technical exceptions, and Tech Gov decisions; approved project specifications and BOD; applicable Engineering Bulletins and amendments; Microsoft Master Specifications; applicable programme or form-factor BOD; approved MTS baseline; vendor submission; consultant comments.
7. Never allow a lower-precedence source to override a higher-precedence source without an approved decision. Do not rank equal-precedence sources by date alone.
8. Confirm applicability for each governing source. If applicability is unresolved, label the basis **Proposed provisional review basis, applicability to be confirmed** and affected conclusions **Reference basis unresolved**, **Provisional assessment only**, or **DCE confirmation required**.
9. Do not create a missing requirement, clause, value, threshold, dimension, setpoint, redundancy criterion, performance target, or acceptance criterion. Record the evidence gap and request confirmation of the governing requirement.
10. Create the **DCE Review Handoff Record** containing package identity, access status, exclusions, project context, design stage, selected knowledge locations, governing source hierarchy, unresolved applicability, assumptions, route, requested deliverable, and material review priorities.
11. Route the handoff to `dce-general-technical-review`, `dce-cde-deviation-review`, or both, then to `dce-review-output` after all selected routes finish.

## Parameters
- Review package or persistent references
- Known project, region, form factor, discipline, and design stage
- Requested review mode and deliverable

## Output
A DCE Review Handoff Record with validated scope, governing basis, stage, route, limitations, and routing instructions.