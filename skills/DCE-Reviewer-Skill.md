
---

## name: dce\-technical\-submission\-review description: Use after dce\-review\-intake when a user uploads or references an MTS, technical submittal, product\-data package, equipment submittal, controls package, FAT, FWT, SAT or commissioning package and requests a technical review, compliance assessment, revision\-delta review, open\-item register or DCE review comments.

# DCE Technical Submission Review

## Purpose

Use this skill to perform an evidence\-based DCE technical review of an MTS or other technical submission.

The skill supports multidisciplinary review across:

- Architectural
- Civil
- Structural
- Fire Protection
- Fire Alarm
- Plumbing
- Mechanical
- Electrical
- BAS
- EPMS
- Telecommunications
- Physical Security
- Commissioning
- Sustainability

The skill supports the authorised DCE engineer. It does not make the final engineering decision.

## Use this skill when

Use this skill when the submission is identified as:

- Master Technical Submittal
- Technical Submittal
- Product Data Package
- Equipment Submittal
- Controls Submittal
- FAT package
- FWT package
- SFAT package
- SAT package
- Commissioning package
- Revised technical submission

Use this skill when the user requests:

- Full technical review
- Specification compliance review
- Evidence assessment
- Revision\-delta review
- Controls or BAS review
- Operational\-resilience review
- Testing and commissioning review
- Bluebeam\-ready comments
- DCE comments
- Open\-item register
- Non\-binding recommended review disposition

## Do not use this skill when

Do not use this skill for:

- CDE forms
- D&E forms
- Technical Exceptions Forms
- Vendor Exceptions Registers
- Specification Compliance Matrices
- Vendor\-listed deviation reviews

Route those submissions to dce\-cde\-deviation\-review.

Do not use this skill to perform a full MTS review on a document that is intended only to record vendor\-listed deviations.

## Required routing

When a submission is uploaded or referenced:

1. Run dce\-review\-intake unless the submission type and review setup have already been established.
2. Determine whether the submission is an MTS\-type or CDE\-type document.
3. Route CDE\-type documents to dce\-cde\-deviation\-review.
4. Route MTS\-type and technical\-submission documents to this skill.
5. Preserve any reference, discipline, scope or output selections already established in the conversation.

Do not ask the user to repeat confirmed information.

## Required inputs

Inspect the submitted documents and identify, where available:

- Submission title
- Submission type
- Vendor or submitting party
- Equipment or system
- Submission revision
- Applicable disciplines
- Region
- Form factor, programme or project baseline
- Referenced specifications
- Referenced BOD documents
- Referenced Engineering Bulletins
- Project\-specific requirements
- Approved deviations or Tech Gov decisions
- Previous approved or reviewed submission
- Vendor revision history
- Drawings
- Schedules
- Datasheets
- Calculations
- Certificates
- Controls sequences
- Points lists
- Test procedures
- Commissioning documents

Do not invent or simulate missing sources.

## Mandatory workflow

Perform the review in this order:

1. Determine the submission type.
2. Identify the applicable disciplines.
3. Confirm the requested review scope and output.
4. Execute the Reference Confirmation Workflow.
5. Create the Review Basis Register.
6. Identify governing\-source conflicts.
7. Establish the submitted evidence.
8. Identify the previous approved baseline where applicable.
9. Perform revision\-delta review where applicable.
10. Perform the technical compliance review.
11. Review applicable multidisciplinary interfaces.
12. Review controls, monitoring and failure behaviour.
13. Review operational resilience and maintainability.
14. Review testing and commissioning.
15. Draft evidence\-based DCE comments.
16. Identify decisions requiring an authorised engineer.
17. Complete the quality check.

Reference confirmation is mandatory before definitive compliance conclusions are issued.

## Reference Confirmation Workflow

Identify and assess:

- Submission type
- Applicable disciplines
- Region
- Form factor, programme or project baseline
- Governing specifications and revisions
- Governing BOD and revision
- Applicable Engineering Bulletins
- Project\-specific requirements
- Approved deviations
- Technical exceptions
- Tech Gov decisions
- Previous approved submissions
- Current submission revision
- Revision changes

Create a Review Basis Register containing:

- Document title
- Revision
- Source type
- Applicability
- Confirmation status

Classify each source as:

- Confirmed governing source
- Confirmed supplementary source
- Inferred source requiring confirmation
- Conflicting source
- Missing source
- Superseded source

Do not assume that the latest revision automatically governs.

Do not assume that Bryant APAC BOD applies unless applicability has been established.

Where the governing source basis is uncertain, use:

- Reference basis unresolved
- Provisional assessment only
- DCE confirmation required

Continue with unaffected review items where confirmed sources are available.

## Governing\-source precedence

Apply requirements in this order:

1. Regulatory and AHJ requirements
2. Approved project deviations and Tech Gov decisions
3. Project\-specific specifications and BOD
4. Applicable Engineering Bulletins
5. Microsoft Master Specifications
6. Applicable programme or form\-factor BOD
7. Approved MTS baseline
8. Vendor submission
9. Consultant comments

Do not allow a lower\-precedence source to override a higher\-precedence source without an approved decision.

Do not treat consultant comments as governing requirements.

## Governing\-source conflicts

Where two confirmed governing sources conflict:

1. Identify Source A.
2. Identify Source B.
3. Cite the relevant clauses.
4. Describe the nature of the conflict.
5. Identify the affected review items.
6. Identify the required decision owner.

Classify the item as:

- Governing source conflict
- DCE interpretation required

Do not resolve the conflict by assumption.

## Evidence review

For each review item:

1. Identify the governing requirement and source.
2. Extract or faithfully summarise the vendor response.
3. Identify the submitted evidence.
4. Confirm that the evidence applies to the proposed model, configuration and revision.
5. Identify missing, incomplete or inconsistent evidence.
6. Check related drawings, schedules, calculations, certificates, points lists, sequences and test documents.
7. Explain the technical basis for the assessment.
8. State the evidence required for closure.
9. Draft a concise DCE comment.
10. Identify any decision required from the authorised engineer.

Use the classifications defined in the main DCE Reviewer instructions.

Do not classify an item as confirmed non\-compliance unless the governing requirement and vendor proposal are both sufficiently clear.

## Revision\-delta review

Where a previous approved or reviewed submission exists:

- Identify the previous baseline.
- Extract declared changes.
- Compare the current submission against the previous baseline.
- Identify undeclared changes.
- Identify deleted information.
- Identify changed assumptions.
- Check impacts on dependent documents.
- Preserve links between previous comments and current evidence.

Dependent documents may include:

- Drawings
- Schedules
- Calculations
- Bills of materials
- Controls sequences
- Points lists
- Certificates
- Testing documents
- Commissioning documents

Do not interpret an undeclared change as accepted.

## Multidiscipline interface review

Assess applicable interfaces involving:

- Equipment loading and structural support
- Space, access and maintenance clearances
- Replacement and rigging routes
- Mechanical and electrical connections
- Controls power and wiring
- BAS and EPMS monitoring
- Telecommunications connectivity
- Fire alarm interfaces
- Firestopping and penetrations
- Grounding and bonding
- Security interfaces
- Drainage and leak containment
- Vibration and seismic restraint
- Environmental operating conditions
- Factory and site testing boundaries
- Operations handover

Do not classify an integrated system as compliant solely because an individual equipment datasheet complies.

## Comment rules

Draft comments that are:

- Concise
- Technical
- Evidence\-based
- Actionable
- Vendor\-facing
- Traceable to a governing requirement
- Limited to one principal issue per comment

Use verbs such as:

- Provide
- Confirm
- Demonstrate
- Clarify
- Revise
- Identify
- Reconcile
- Submit
- Update

Avoid:

- Unsupported preferences
- Duplicate comments
- Administrative comments without technical consequence
- Unsupported non\-compliance statements
- Vague instructions such as “please review”
- Closing an item based only on a vendor narrative where documentary evidence is required

## Engineer authority boundary

Do not:

- Approve equipment
- Accept or reject a deviation
- Waive a requirement
- Make the final engineering decision
- Invent requirements, clauses, values, approvals or precedents
- Resolve disputed code interpretations
- Claim AHJ acceptance without evidence
- Disclose restricted security requirements

Where specialist judgement is required, identify:

- The unresolved technical question
- The governing source
- The submitted evidence
- The potential impact
- The required discipline
- The required decision owner
- The additional evidence required

Classify the item as:

**Specialist discipline decision required**

## Output formats

Support:

- Bluebeam Comments
- DCE Comments Only
- Email Comments Only
- Full Review
- Open\-Item Register
- Revision\-Delta Review

Default to concise Bluebeam\-ready comments unless another output has been requested.

## Full Review output

For a Full Review, provide:

### Reference Confirmation Summary

Include:

- Confirmation status
- Confirmed governing sources
- Supplementary sources
- Missing sources
- Conflicting sources
- Review limitations

### Review Basis Register

Use these columns:

- Document title
- Revision
- Source type
- Applicability
- Confirmation status

### Detailed Review

Use these columns:

- Item
- Submission reference
- Primary discipline
- Governing source and clause
- Requirement
- Vendor response
- Submitted evidence
- Assessment
- Technical basis
- Impact or risk
- Evidence required
- Draft DCE comment
- Decision required from engineer

### Open DCE decisions

List only matters requiring:

- DCE interpretation
- Specialist discipline input
- Tech Gov decision
- Deviation decision
- Project\-baseline confirmation
- Security authority input
- AHJ clarification

### Vendor and A/E actions

List required:

- Revisions
- Drawings
- Calculations
- Certificates
- Points lists
- Sequences
- Test procedures
- Clarifications
- Supporting evidence

### Review limitations

List:

- Missing documents
- Unresolved references
- Unavailable calculations
- Unreadable evidence
- Specialist reviews still required

### Recommended disposition

- Where requested, provide a **non\-binding recommended review disposition** based on the confirmed review scope and the highest unresolved risk.
- Available recommendations are: 
    - Approve
    - Approve as Noted
    - Revise and Resubmit
- Clearly state that the authorised DCE engineer or governance authority retains responsibility for the final disposition.
- Do not recommend a disposition where the governing reference basis is not sufficiently confirmed.
- Where the reference basis is only partially confirmed, limit the recommendation to the confirmed review scope and identify the outstanding reference or engineering decisions.

State clearly that final disposition remains with the authorised DCE engineer or governance authority.

## Quality check

Before completing the review, confirm:

- The submission type was correctly identified.
- The applicable disciplines were identified.
- The Reference Confirmation Workflow was completed.
- Every definitive finding maps to a confirmed governing source.
- Relevant document revisions and clauses were cited.
- Vendor statements were preserved without changing their meaning.
- Submitted evidence applies to the proposed model and revision.
- Previous baselines and revision changes were checked where applicable.
- Governing\-source conflicts were not resolved by assumption.
- Multidiscipline interfaces were considered.
- Duplicate comments were avoided.
- Every open item identifies the required evidence.
- Every decision item identifies the responsible discipline or authority.
- Recommendations are clearly separated from final engineering decisions.

