# appt-mgmt-medical-records-api

> medical-records bounded context: service API

Part of the **LMS Library** distributed system — team `lms-library`, Grupo 2.
Governance and documentation live in [`library-docs`](https://github.com/code-corhuila/library-docs).

## Project overview

This repository contains the base structure for the medical-records API service. It defines the standard project layout for the bounded context, including documentation, infrastructure, testing, environment configuration, and CI scaffolding.

## Repository structure

```text
appt-mgmt-medical-records-api/
├── .github/
│   ├── CODEOWNERS
│   └── workflows/
│       └── ci.yml
├── adrs/
│   ├── README.md
│   └── ADR-0001-api-technology-selection.md
├── terraform/
│   ├── README.md
│   └── main.tf
├── tests/
│   ├── README.md
│   └── smoke.test.js
├── .env.example
├── .gitignore
├── docker-compose.yml
├── package.json
├── README.md
└── LICENSE (if added later)
```

## Key components

- `.github/`: repository governance, CODEOWNERS and CI workflow configuration.
- `adrs/`: architecture decision records related to design decisions for the service.
- `terraform/`: starter infrastructure templates for environment provisioning.
- `tests/`: smoke and automated validation scaffolding.
- `docker-compose.yml`: local database services used during development.
- `package.json`: Node.js project definition and available scripts.
- `.env.example`: environment variables template.

## Local development

1. Copy `.env.example` to `.env`.
2. Start required infrastructure:
   ```bash
   docker compose up -d
   ```
3. Install dependencies:
   ```bash
   npm install
   ```
4. Start the API:
   ```bash
   npm run dev
   ```
5. Run tests:
   ```bash
   npm test
   ```

## Branching

Three permanent branches. **None of them accepts a direct commit** — you enter through a child
branch and leave through a Pull Request.

```
develop  <--PR--  feat/... fix/... chore/...
qa       <--PR--  qa/...
main     <--PR--  release/...  hotfix/...
```

Promotion happens **by re-application** (`git cherry-pick -x`), never by merging one permanent
branch into another: `merge develop -> qa` and `merge qa -> main` do not exist in this model.

`main` requires **1 approval from `ariel5253`**. On `develop` and `qa` the team sets its own review
rule.

Full policy: `00-governance/branching-policy.md` in `library-docs`.
