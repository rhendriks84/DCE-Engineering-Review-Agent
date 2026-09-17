---
name: dce-general-technical-review
description: Use after dce-review-intake for MTS, drawings, calculations, controls/BAS, commissioning, vendor responses, and other technical submissions requiring a stage-aware, material DCE review.
---

## Purpose
Perform the substantive multidisciplinary DCE review for general technical submissions and the technical portion of hybrid packages.

## Uses
Skill dependencies: `dce-review-intake`, `dce-review-output`.
Agent knowledge sources: confirmed review basis, vendor submission, consultant comments, prior baseline, DCE Processes, and supporting evidence.

## Instructions
1. Consume the **DCE Review Handoff Record** and preserve package identity, governing basis, assumptions, design stage, requested deliverable, and route.
2. Assess the submission against the level of definition reasonably expected for the confirmed design stage. Do not request IFC-level detail during Concept, BOD, SDD, 30%, or equivalent stages unless the governing basis requires it.
3. Review compliance evidence, controls and monitoring, BAS integration, operational resilience, maintainability, multidisciplinary interfaces, safety, testing, commissioning, constructability, capacity, redundancy, and lifecycle reliability as applicable.
4. Apply an owner-side lens: evaluate schedule impact, risk exposure, operational impact, cost, future approvals, business outcome, and technical correctness. Preserve specialist judgement for the responsible discipline.
5. Apply a materiality filter. Retain findings affecting compliance, safety, reliability, operability, maintainability, capacity, redundancy, constructability, cost, schedule, commissioning, or future approvals. Exclude editorial points that do not materially improve outcomes.
6. Preserve vendor and A/E statements faithfully. Treat consultant comments and precedent as supporting evidence, not governing requirements.
7. For each material issue, record a unique finding ID, originating route `General Technical Review`, severity, finding category, closure status, governing source and clause, exact submission locator, requirement, vendor position, evidence, technical and business risk, required closure evidence, response party, decision owner, and cross-linked finding IDs.
8. Classify severity as: **Critical** for life safety, regulatory/AHJ conflict, or fundamental resilience/redundancy failure; **Major** for material non-compliance, missing essential calculation/evidence, capacity, operability, reliability, cost, or schedule risk; **Minor** for bounded coordination or documentation issues with limited consequence; **Observation** for a non-mandatory improvement opportunity.
9. Use finding categories: Non-compliance, Potential deviation, Missing evidence, Incomplete response, Unclear requirement or response, Operational concern, Coordination issue, Reference basis unresolved, or Informational.
10. Use closure statuses: Open, Partially addressed, Pending vendor response, Pending A/E or EOR response, Pending DCE decision, Pending Tech Gov decision, Closed, Superseded, or Not applicable.
11. Cite the exact page, table, drawing, schedule, section, or row plus the governing clause. If unavailable, state **Submission locator unavailable** and keep the finding open.
12. Never infer or create an absent requirement, value, threshold, dimension, setpoint, redundancy criterion, performance target, or acceptance criterion. Request confirmation of the governing requirement and mark the assessment provisional.
13. Compare the current submission with prior baselines and dependent documents; identify declared and undeclared changes and resulting interface or approval impacts.
14. Close a finding only when revised documentation, calculations, responses, test evidence, or an authorised decision sufficiently addresses the issue. A statement of intent alone is not closure unless accepted through the governing process.
15. Return completed findings to `dce-review-output`; preserve cross-links to deviation findings for hybrid packages.

## Parameters
- DCE Review Handoff Record
- Accessible submission and comparison baseline
- Confirmed governing sources

## Output
A stage-aware, severity-classified technical finding set with evidence, ownership, risks, closure criteria, and cross-links.