# Kokkos CI Working Group Review with Leadership

**Date/Time:** 2026-06-15, 3:00-4:00 PM ET  
**Meeting cadence:** Every 2 months (this was the 2nd review meeting)    
**Note taker:** Damien

## Attendees
- Daniel
- Damien
- Nathan
- Christian

## Context and Goals
This recurring review is intended to:
- Keep Kokkos leadership informed on CI Working Group activity and progress.
- Help leadership and chairs identify where effort should be refocused.
- Provide a channel for CI Working Group chairs to raise concerns.

## Discussion Summary

### 1) Progress since the previous review
- CI WG reported continued routine infrastructure work and additions of CI builds to close coverage gaps.
- The group has also reviewed test load distribution across available sites to improve balance while preserving redundancy.
- Most expansion has been reactive to incidents and observed gaps rather than guided by a formal plan.

### 2) Incident tracking and operational visibility
- Leadership asked whether CI incidents are being tracked in a structured way.
- Current practice relies mostly on Slack discussions and notes from WG meetings.
- Team noted that past Trilinos integration workflows benefited from explicit issue labeling and incident logs.
- Team agreed that improved incident tracking would make trends and recurring problems easier to analyze.

### 3) CI coverage clarity across heterogeneous systems
A major topic was the difficulty of understanding overall CI coverage due to a fragmented ecosystem:
- Multiple execution sites (Sandia, ORNL, HPSF/UOregon, GitHub-hosted resources).
- Multiple automation systems (GitHub Actions, Jenkins, GitLab pipelines/nightlies).
- Manual effort currently required to answer basic coverage questions (compiler ranges, C++ standard levels, debug modes, backend/options matrix).

### 4) Proposed first step: configuration mining tool
- Christian proposed starting with a script that parses checked-in CI configuration files.
- Initial goal: generate a repeatable machine-readable table/database of intended CI coverage.
- Potential use of AI: assist with generating the script, but keep execution reproducible via normal tooling.
- Suggested cadence: run the script regularly (e.g., weekly) and publish a coverage snapshot.
- Leadership asked how to validate that configured jobs match what actually runs; the group agreed to defer full runtime/log reconciliation to a later phase.

### 5) Roadmap and communication
- Leadership requested that CI WG publish a short-term roadmap and priority list in a discoverable location.

### 6) Ecosystem engagement scope
- Leadership raised whether CI WG should increase engagement with additional Kokkos ecosystem projects beyond Core/Kernels.
- Current status: strongest focus on Kokkos Core, some interaction with Kokkos Kernels, recent support for Kokkos FFT.
- Group consensus: broader ecosystem expansion is valuable, but not urgent; priority should remain on strengthening current CI foundations first.

## Decisions and Agreements
- Prioritize creation of a configuration-parsing tool to establish a baseline CI coverage inventory.
- Keep scope focused on configuration mining first; defer full cross-check against runtime logs/build reports.
- CI WG chairs will produce and publish a concise priorities list and short-term roadmap.
- Broader subproject engagement is deferred until foundational CI visibility and process maturity improve.

## Action Items
1. **CI WG chairs**: Draft and publish a short-term roadmap and prioritized task list.
2. **CI WG**: Prototype a script to parse CI configuration files and generate a coverage table.
3. **CI WG**: Propose a lightweight incident-tracking approach (e.g., issue labels/templates) to improve historical visibility.
4. **Next meeting organizer**: Schedule via LFX to improve discoverability and capture artifacts (calendar visibility, transcript tooling).

## Open Questions
- What minimum criteria define a "good enough" coverage inventory for initial rollout?
- Where should the generated coverage table/dashboard live for best discoverability and maintenance?
- What is the right phase-2 approach to reconcile intended coverage with actual executed builds across all CI platforms?
