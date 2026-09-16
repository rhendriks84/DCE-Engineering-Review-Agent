# DCE Engineering Review Agent

## DCE Reviewer Skill

The reusable skill definition is located at:

skills/DCE-Reviewer-Skill.md

The skill defines:

- trigger conditions;
- supported submission types;
- mandatory reference confirmation;
- governing\-source precedence;
- evidence and compliance classifications;
- revision\-delta review;
- multidisciplinary interfaces;
- reviewer authority boundaries;
- output formats;
- and final quality checks.

The skill complements the core reviewer instructions and does not replace the authorised DCE engineer’s judgement.

Problem
Solution
Innovation
Demo
Architecture
Workflow
Evaluations
Roadmap

## Quick Start

- Demo: DEMO.md
- Core Prompt: prompts/DCE-Reviewer-Prompt.md
- Skill Definition: skills/DCE-Reviewer-Skill.md
- Architecture: Architecture.md
- Workflow: Workflow.md
- Evaluation Criteria: evaluations/Review-Evaluation-Criteria.md
- ADRs: docs/adr

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
