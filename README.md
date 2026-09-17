# DCE Engineering Review Agent

## Purpose

The DCE Engineering Review Agent is an engineer-in-the-loop design-assurance solution for Microsoft DCE technical reviews.

The agent supports:

- Master Technical Submittals (MTS)
- Project and technical submittals
- Drawings and schematics
- Electrical single-line diagrams
- Calculations and schedules
- Controls and BAS packages
- Commissioning packages
- Vendor response packages
- CDE and D&E reviews
- Technical exceptions
- Compliance matrices
- Vendor exception registers
- Hybrid technical and deviation packages

The agent provides evidence-based, non-binding guidance. Final engineering approval, deviation, waiver and disposition authority remains with the authorised DCE engineer or governance authority.

---

## Key Innovation

Most document-review assistants begin assessing compliance immediately.

The DCE Engineering Review Agent first:

1. Classifies the uploaded package.
2. Confirms the governing review basis.
3. Establishes source precedence.
4. Identifies conflicts and unresolved assumptions.
5. Creates a DCE Review Handoff Record.
6. Routes the package to the appropriate review skill.
7. Produces traceable findings and controlled outputs.

This reduces the risk of technically sound reviews being performed against the wrong specification, Engineering Bulletin, Basis of Design or approved project baseline.

---

### Four-Skill Architecture

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