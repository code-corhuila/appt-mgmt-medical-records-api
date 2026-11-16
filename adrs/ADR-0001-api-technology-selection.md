# ADR 0001: API technology selection

- Status: Proposed
- Date: 2026-11-15

## Context

The medical-records bounded context requires a service that can expose APIs for clinical and administrative information while fitting the LMS Library distributed architecture.

## Decision

Use a lightweight Node.js service with an HTTP API layer and PostgreSQL persistence.

## Consequences

- Faster delivery for REST endpoints.
- Easier integration with other services in the distributed system.
- Clear boundary for future extension and testing.
