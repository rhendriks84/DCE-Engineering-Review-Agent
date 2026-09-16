# Beginner installation guide

This pack adds the repository files identified as missing by the structural AI-readiness evidence pack.

## Method A: Upload through the GitHub website

Upload each file to the matching path. For files inside `.github` or `scripts`, create the path by entering the full filename when using **Add file > Create new file**.

Example:

```text
.github/copilot-instructions.md
```

GitHub creates the folder automatically when the slash is entered.

## Method B: Copy into the local repository

1. Extract this ZIP.
2. Copy all files and folders from the extracted pack into:

```text
C:\Users\rhendriks\DCE-Engineering-Review-Agent
```

3. Open Command Prompt and run:

```cmd
cd C:\Users\rhendriks\DCE-Engineering-Review-Agent
powershell -ExecutionPolicy Bypass -File scripts\validate-repo.ps1
git status
git add .
git commit -m "Add agent readiness guidance and validation"
git push origin main
```

## Re-run structural evidence

After pushing the files, rerun the CodeBlend evaluation command. If the judge-stage version-detection issue remains, the deterministic repository evidence should still show the newly added agent surfaces, governance files and CI workflow.

## Important

Review `.github/CODEOWNERS` before uploading. It currently assigns the repository to `@rhendriks84`.
