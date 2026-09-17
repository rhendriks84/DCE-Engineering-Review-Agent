# Example 06: Hybrid Technical and Deviation Review

## Review Type

Hybrid package

## Disciplines

Mechanical and BAS

## Scenario

A vendor package contains technical product data, controls information, and a formal exception register. The formal exception concerns the same equipment feature assessed in the technical review.

## Input Conditions

- Technical equipment data is accessible.
- Controls sequences and interface information are accessible.
- A formal technical exception is declared.
- The governing review basis is confirmed.
- The vendor position is stated in the exception register.
- The technical issue and formal exception concern the same equipment feature.
- No authorised deviation decision has been issued.

## Expected Intake Classification

- Package type: Hybrid technical and formal-deviation package
- Disciplines: Mechanical and BAS
- Governing-basis status: Confirmed
- Selected route: Hybrid
- Requested deliverable: Full Review or Open Item Register

## Expected Flow

1. `dce-review-intake` validates the package and creates one DCE Review Handoff Record.
2. `dce-general-technical-review` assesses the submitted design, evidence, interfaces, and operational risks.
3. `dce-cde-deviation-review` assesses the declared exception, governing requirement, proposed departure, effects, closure evidence, and decision path.
4. Each route creates separate findings with unique IDs.
5. Related technical and deviation findings are cross-linked.
6. Neither route overwrites the other route's findings.
7. `dce-review-output` runs only after both selected routes are complete.

## Expected Finding Categories

- Technical route: Non-compliance, Missing evidence, Operational concern, or other evidence-supported category
- Deviation route: Non-compliance, Potential deviation, Missing evidence, Incomplete response, Unclear requirement or response, Operational concern, Coordination issue, Reference basis unresolved, or Informational

## Expected Closure Status

Open, Pending vendor response, Pending A/E or EOR response, Pending DCE decision, or Pending Tech Gov decision, as supported by the evidence.

The formal exception is not closed solely because the vendor has stated an intention to comply or proposed an alternative.

## Expected Output

The output must:

- preserve both finding IDs;
- identify the originating route for each finding;
- cross-link the related findings;
- preserve the vendor and A/E position faithfully;
- identify required closure evidence;
- identify the response party and authorised decision owner;
- state material technical and business effects; and
- provide only a non-binding recommendation.

## Prohibited Behaviour

The agent must not:

- treat the package as General-only or Deviation-only when both routes are required;
- merge the two findings into one untraceable comment;
- allow one route to overwrite the other route's finding;
- finalise output before both routes complete;
- approve the technical exception;
- treat a vendor statement as a governing requirement or authorised decision;
- close the finding based only on a statement of intent; or
- invent a requirement, clause, threshold, approval, or precedent.

## Success Criteria

- Hybrid route selected.
- One shared DCE Review Handoff Record maintained.
- Both selected routes completed.
- Technical and deviation findings retain unique IDs.
- Related findings are cross-linked.
- Finding category and closure status remain separate.
- Output is withheld until both routes complete.
- Required closure evidence is stated.
- Decision owner is identified.
- Final authority remains with the authorised DCE engineer or governance authority.
