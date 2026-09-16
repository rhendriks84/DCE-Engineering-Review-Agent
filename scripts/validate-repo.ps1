$ErrorActionPreference = "Stop"

$requiredFiles = @(
    "README.md",
    "AGENTS.md",
    "Prompt.md",
    "CONTRIBUTING.md",
    ".github/copilot-instructions.md",
    ".github/CODEOWNERS",
    ".github/pull_request_template.md"
)

$alternativeGroups = @(
    @("Architecture.md", "docs/Architecture.md"),
    @("Workflow.md", "docs/Workflow.md"),
    @("Examples.md", "docs/Examples.md")
)

$failures = New-Object System.Collections.Generic.List[string]

foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file -PathType Leaf)) {
        $failures.Add("Missing required file: $file")
    }
}

foreach ($group in $alternativeGroups) {
    $found = $false
    foreach ($candidate in $group) {
        if (Test-Path $candidate -PathType Leaf) {
            $found = $true
            break
        }
    }
    if (-not $found) {
        $failures.Add("Missing one of: $($group -join ', ')")
    }
}

$markdownFiles = Get-ChildItem -Recurse -File -Filter *.md
$localLinkPattern = '\[[^\]]+\]\((?!https?://|mailto:|#)([^)]+)\)'

foreach ($md in $markdownFiles) {
    $content = Get-Content $md.FullName -Raw
    $matches = [regex]::Matches($content, $localLinkPattern)
    foreach ($match in $matches) {
        $target = $match.Groups[1].Value.Split('#')[0]
        if ([string]::IsNullOrWhiteSpace($target)) { continue }
        $decoded = [uri]::UnescapeDataString($target)
        $resolved = Join-Path $md.DirectoryName $decoded
        if (-not (Test-Path $resolved)) {
            $relativeMd = Resolve-Path -Relative $md.FullName
            $failures.Add("Broken local link in ${relativeMd}: $target")
        }
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Repository validation FAILED" -ForegroundColor Red
    foreach ($failure in $failures) {
        Write-Host "- $failure" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Repository validation PASSED" -ForegroundColor Green
Write-Host "Checked required agent guidance, governance files and local Markdown links."
