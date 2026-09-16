# Contributing

Thank you for improving the DCE Engineering Review Agent.

## Principles

All changes must preserve:

- mandatory reference-source confirmation;
- governing-source precedence;
- evidence traceability;
- multidisciplinary applicability;
- engineer-in-the-loop authority;
- explicit handling of uncertainty and source conflicts;
- protection of restricted information.

## Contribution workflow

1. Create or select an issue describing the problem.
2. Create a branch for the change.
3. Read `AGENTS.md` and `.github/copilot-instructions.md`.
4. Make the smallest coherent change.
5. Update affected documentation and examples.
6. Run the repository validation command.
7. Open a pull request using the repository template.

## Validation

From the repository root, run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/validate-repo.ps1
```

The validator checks for the expected agent guidance, governance and documentation files and performs basic Markdown-link checks for local repository paths.

## Review checklist

- Is the governing-source hierarchy unchanged or deliberately documented?
- Does the change preserve human engineering authority?
- Are new classifications or outputs defined consistently?
- Are examples updated?
- Are restricted-security boundaries preserved?
- Has validation passed?

## Reporting issues

Issues should include:

- review type and discipline;
- expected behaviour;
- observed behaviour;
- governing source context, without uploading restricted content;
- reproduction steps using non-confidential or synthetic examples;
- proposed acceptance criteria.

Do not commit Microsoft Confidential, project-sensitive, personal, vendor-confidential or restricted physical-security information to this repository.
