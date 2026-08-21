# Kokkos CI Working Group Review with Leadership

**Date/Time:** 2026-08-21, 3:00-4:00 PM ET  
**Meeting Cadence:** Every 2 months (2nd review meeting)  
**Note Taker:** Damien

## Attendees
- Daniel
- Damien
- Nathan
- Christian

---

## Overview

This meeting reviewed the CI Working Group's progress and priorities in
response to leadership's request from the previous meeting. The priorities
document (`meeting_notes/wg-ci/priorities_and_activities.md`) was referenced
throughout the discussion.

---

## Near-Term Focus Areas

### 1. Tracking Tested Configurations

**Current Work:**
- Developed AI-generated scripts to scrape all configuration files from:
  - `.github/workflows`
  - `.gitlab`
  - `.jenkins`
- Extracting all CMake options
- Planning to produce a heat map or analysis to identify testing gaps

**Discussion:**
- **Christian:** Suggested creating a weight map to ensure resources are allocated appropriately
  - Example: If C++ standards usage is C++20 (75%), C++23 (20%), and C++26 (5%), are we committing the right amount of testing resources?
  - Are we over-investing in corner cases while under-testing widely-used configurations?

### 2. Analyze and Review Expensive Tests

**Current Process:**
- Analyzing test performance on the HPSF site by inspecting logs
- Manual inspection process (no API calls to GitLab currently)
- Focus on develop branch
- Test timing information printed at the end of build logs ([reference](https://github.com/kokkos/kokkos/blob/1332262a7fb2e5f41336f2b327ed0ae8a46a42d1/.gitlab/hpsf-gitlab-ci.yml#L19-L20))

**Discussion Points:**

**Damien:** Why manual process instead of API calls?  
**Daniel:** Currently done manually

**Christian:** Why focus on HPSF and not other sites like SNL?  
**Daniel:** HPSF covers many configurations

**Damien:** What is the review protocol?  
**Daniel:** Review occasionally before WG meetings or when issues appear on PRs. Should make this part of regular meeting agenda.

**Damien:** Why review logs instead of using CDash?  
**Daniel:** Need GTest granularity. CDash only shows print-on-failure output.

**Known Issues:**
- Death test issues are tracked
- ScatterView tests are notoriously slow

**Questions Raised:**
- **Damien:** Have CDash limitations been discussed at HPSF CI WG meetings? (Zack has CDash experience)
- **Damien:** How much of our testing submits to CDash?  
  **Daniel:** HPSF and all nightlies
- **Damien:** Have you tried extracting config data from CDash uploads, or only used the AI script approach?

**Future Plans:**
- Interested in setting up clang-build-analyzer to analyze compilation costs

### 3. Test and Publish Benchmark Results

**Status:**
- **Damien** observed that nothing has been posted to the [benchmark results repository](https://github.com/kokkos/kokkos-benchmark-results) in 3 months

**Alternative Being Considered:**
- Investigating Warden performance tracking tool instead

---

## Infrastructure Challenges

**ORNL Systems:**
- **Daniel:** Difficult to maintain ORNL systems
- **Damien:** Recommended engaging management to find workable solutions with IT admins

---

## Recommendations and Action Items

1. **Escalate hotspots into issues** in the Core repository to pull in more resources
2. **Share build analysis** with the broader team
3. **Translate data into actionable items** - develop process to convert analysis into concrete improvements
4. **Establish regular review protocol** for expensive tests
5. **Investigate ORNL infrastructure solutions** through management channels
