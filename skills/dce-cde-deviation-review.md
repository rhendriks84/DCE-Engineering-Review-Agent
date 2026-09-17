---
name: dce-cde-deviation-review
description: Use after dce-review-intake for CDE, D&E, technical exceptions, compliance matrices, vendor exceptions, or packages containing formal deviations requiring controlled closure assessment.
---

## Purpose
Review vendor-listed deviations, exceptions, exclusions, clarifications, and technical alternatives and determine the evidence, authority, materiality, and action needed for closure.

## Uses
Skill dependencies: `dce-review-intake`, `dce-review-output`.
Agent knowledge sources: governing project requirements, approved BOD, Master Specifications, Engineering Bulletins, approved deviations, regional precedent, DCE Processes, and the vendor exception package.

## Instructions
1. Consume the **DCE Review Handoff Record** and preserve package identity, governing basis, assumptions, design stage, requested deliverable, and route.
2. Extract every vendor-listed deviation, exception, exclusion, clarification, and technical alternative without changing its meaning. Preserve A/E or EOR responses faithfully.
3. Assess each item against the detail expected at the confirmed design stage while recognising that a formal exception must still identify the requirement, proposed departure, impact, and required decision.
4. Apply the governing hierarchy from intake. A vendor statement, consultant comment, or precedent cannot override a higher-precedence source without an approved decision.
5. Apply an owner-side and materiality lens: assess compliance, safety, resilience, operability, maintainability, capacity, redundancy, constructability, cost, schedule, commissioning, future approvals, and business impact.
6. For each item, record a unique finding ID, originating route `Deviation Review`, severity, finding category, closure status, governing source and clause, exact submission locator, vendor position, A/E or EOR response, evidence, technical and business effect, interfaces, required closure evidence, response party, decision owner, and cross-linked finding IDs.
7. Classify severity as: **Critical** for life safety, regulatory/AHJ conflict, or fundamental resilience/redundancy failure; **Major** for material non-compliance or significant capacity, reliability, operability, cost, schedule, or approval risk; **Minor** for bounded coordination or documentation issues; **Observation** for a non-mandatory improvement opportunity.
8. Use finding categories: Non-compliance, Potential deviation, Missing evidence, Incomplete response, Unclear requirement or response, Operational concern, Coordination issue, Reference basis unresolved, or Informational.
9. Use closure statuses: Open, Partially addressed, Pending vendor response, Pending A/E or EOR response, Pending DCE decision, Pending Tech Gov decision, Closed, Superseded, or Not applicable.
10. Cite the exact vendor row and submission page, table, drawing, schedule, or section plus the governing clause. If unavailable, state **Submission locator unavailable** and keep the finding open.
11. When the governing requirement or applicability is unconfirmed, do not issue a definitive compliance conclusion. Use **Reference basis unresolved**, **Provisional assessment only**, or **DCE confirmation required**.
12. Never infer or create an absent requirement, clause, value, threshold, dimension, setpoint, redundancy criterion, performance target, or acceptance criterion. Request confirmation instead.
13. Determine whether the response addresses the exact departure, supplies evidence, resolves interfaces and consequences, and identifies the authorised decision path. Keep material uncertainty open.
14. Close a finding only when revised documentation, calculations, responses, test evidence, or an authorised deviation/Tech Gov decision sufficiently addresses the issue. A statement of intent alone is not closure unless accepted through the governing process.
15. Return completed findings to `dce-review-output`; preserve cross-links to technical findings for hybrid packages.

## Parameters
- DCE Review Handoff Record
- Accessible deviation or exception package
- Confirmed governing sources and authorised decisions

## Output
A severity-classified deviation finding set with faithful source positions, material impacts, decision ownership, closure evidence, and cross-links.