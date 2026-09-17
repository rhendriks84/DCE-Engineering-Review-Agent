---
name: dce-review-output
description: Use after selected DCE technical or deviation reviews to convert findings into clear, natural, traceable deliverables, enforce materiality and closure checks, and provide a controlled non-binding disposition.
---

## Purpose
Convert completed DCE findings into concise, natural, traceable deliverables and verify that comments, closure states, and dispositions respect evidence, stage, materiality, and authority boundaries.

## Instructions
1. Consume the **DCE Review Handoff Record** and verify every selected route is complete. For a Hybrid route, require both review results before consolidation.
2. Confirm every finding has a unique ID, originating route, severity, finding category, closure status, governing source and clause, exact submission locator, response party, decision owner, material impact, and closure evidence. Return incomplete entries to the originating route.
3. Validate severity consistently: **Critical** for life safety, regulatory/AHJ conflict, or fundamental resilience/redundancy failure; **Major** for material compliance, capacity, reliability, operability, cost, schedule, or approval risk; **Minor** for bounded coordination or documentation issues; **Observation** for non-mandatory improvements.
4. Apply the design-stage and materiality filters before publication. Remove requests for premature detail unless required by the governing basis, and omit editorial comments with no material outcome.
5. Use the deliverable recorded at intake: DCE Comments Only, Email Comments Only, Bluebeam Comments, Open-Item Register, Revision-Delta Review, or Full Review. Default to Bluebeam-ready comments.
6. Merge findings from all routes. Preserve a primary finding ID and cross-link related IDs without losing route, severity, category, status, source, clause, locator, revision, vendor line, evidence gap, owner, or closure criteria.
7. Draft one vendor-facing issue per comment. Begin with **Provide**, **Confirm**, **Demonstrate**, **Clarify**, **Revise**, **Identify**, **Reconcile**, **Submit**, or **Update** and name the evidence, revision, response, or decision required for closure.
8. Write in clear, natural professional language that sounds like an experienced DCE engineer. Prefer concise sentences and familiar engineering wording. Avoid robotic repetition, excessive headings, formulaic transitions, legalistic padding, and restating information the reader already knows.
9. Keep the tone direct, constructive, and proportionate to the issue. Explain why an item matters when that context helps the recipient act, while avoiding accusatory or absolute wording unless the evidence supports it.
10. Preserve vendor and A/E statements faithfully. Clearly distinguish governing requirements, supporting comments, precedents, assumptions, and reviewer recommendations.
11. When equal-precedence sources conflict and no approved reconciliation is available, keep the affected finding open, state the conflict, avoid choosing by date alone, and route it to the authorised DCE or governance authority.
12. Never insert a requirement, value, threshold, dimension, setpoint, redundancy criterion, performance target, acceptance criterion, approval, or precedent that is absent from the confirmed evidence. Request clarification and label the affected conclusion provisional.
13. A finding may be `Closed` only when revised documentation, calculations, responses, test evidence, or an authorised decision sufficiently addresses it. Statements of intent alone do not constitute closure unless accepted through the governing process.
14. For Full Review, include review basis, design stage, material findings by severity, open DCE decisions, vendor and A/E actions, limitations, and a non-binding disposition.
15. Select the disposition using this decision table:
   - **Approve** only when the governing basis is confirmed and no material finding, evidence gap, conflict, specialist review, or approval dependency remains open.
   - **Approve as Noted** only when remaining notes are non-material, do not require design rework or further approval, and have clear close-out actions.
   - **Revise and Resubmit** when material non-compliance, missing essential evidence, incomplete design information appropriate to the current stage, or unresolved coordination prevents acceptance.
   - **Specialist or multidisciplinary review required** when a conclusion depends on discipline judgement or cross-discipline resolution not yet completed.
   - **Escalate for DCE decision** when the technical basis is sufficiently developed but an authorised owner decision remains necessary.
   - **Escalate for Tech Gov decision** when an exception, waiver, precedent, or conflict requires governance authority.
   - **Reference basis not sufficiently confirmed** when applicability, source authority, or governing criteria remain unresolved.
16. If more than one disposition could apply, choose the most conservative unresolved outcome and briefly state the controlling reason.
17. State that final approval, deviation, waiver, and disposition remain with the authorised DCE engineer or governance authority.

## Parameters
- DCE Review Handoff Record
- Completed technical and/or deviation findings
- Requested deliverable and level of detail

## Output
A controlled DCE deliverable with concise, human-sounding actionable comments, severity, traceability, closure state, limitations, and a non-binding recommendation when requested.