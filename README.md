# DCE Engineering Review Agent

## Quick Start

- Repository overview: README.md
- Demo scenario: DEMO.md
- Architecture: Architecture.md
- Workflow: docs/Workflow.md
- Core reviewer instructions: DCE-Reviewer-Prompt.md

## Purpose

AI-assisted DCE review agent for:

* MTS reviews
* CDE reviews
* Technical exceptions
* Compliance matrices
* Technical submittals

## Features

* Reference Confirmation Workflow
* Multi-discipline review
* Governing-source precedence
* Compliance assessment
* Controls review
* Operational resilience review
* DCE comment generation

## Benefits

* Improved review consistency
* Better traceability
* Reduced wrong-source reviews
* Faster engineering reviews

## Differentiators

Unlike traditional document-review assistants, this agent:

* Confirms governing references before review
* Applies source precedence rules
* Detects governing-source conflicts
* Supports multi-discipline DCE reviews
* Separates engineering recommendations from engineering authority
* Escalates decisions requiring specialist review

## Roadmap

### Current

* Prompt-based DCE reviewer
* Reference Confirmation Workflow
* Multi-discipline review

### Planned

* Automated document classification
* Review Basis Register generation
* Engineering Bulletin retrieval
* Revision delta analysis
* Copilot Studio adaptive-card configuration

## Validation

Run:

powershell -ExecutionPolicy Bypass -File scripts/validate-repo.ps1

Expected Result:

Repository validation PASSED

## Core Reviewer Instructions

The main reviewer instructions are located in:

DCE-Reviewer-Prompt.md

## Screenshots

### Agent Overview

#### Agent Overview 1
screenshots/AgentOverview1.png

#### Agent Overview 2
screenshots/AgentOverview2.png

#### Agent Overview 3
screenshots/AgentOverview3.png

### Review Process

#### Review Process 1
screenshots/ReviewProcess1.png

#### Review Process 2
screenshots/ReviewProcess2.png

### Workflow

screenshots/Workflow.png
