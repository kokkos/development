# Agenda
## What was achieved since last meeting

- Checklist for Godbolt integration Lead: Thomas. Estimate 3*5h
- Enable the collection of benchmark data across open platforms (e.g. Frontier and Auorora). Lead Luc. Estimate 3*5h
- Streamline the release process with a central checklist. Lead Jakob. Estimate 3*5h
- checklists adapted Remove hard-coded version number in Kokkos-Kernels spack recipe. Lead Jakob, main work by Richard Estimate 3*5h
- 1 release and 1 new bugfix release published on spack and godbolt (pretty seamlessly due to the checklists)
- Cuda Godbolt integration (although it only works on some nvcc versions and we need to add the linker flags ourselves. We need to talk to the godbold devs again)
- Updated our checklists for the latest release which includes kokkos-tools
- Investigated if we can tighten our spack specification (see spack subsection). This will probably be relevant to a lot of packages.
- Extensive discussion about what the deprecated_code flag means in spack


## Short term plan until the next release:
Mainly a carryover of old things but with some new additions:

- mdspan as external dependency. Lead: Thomas. Estimate 3*12h
- Investigate if a Conan recipe would automate future Godbolt integration. Lead: Jakob. Estimate 3*5h
- Host only Conan package for Kokkos. Lead Nic. Estimate 3*5h
- Redesign TPLs in Kokkos Kernels Lead Luc. Estimate 3*20h
- Guidelines for downstream spack package. Lead Jakob. Estimate 3*10h
- Allow the Smoketest to be used with an installed Kokkos to allow install testing. Lead Jakob Estimate 3*10h
- Expressing the correct Archs in Spack Lead Jakob and Richard Estimate 3*10h
- STRETCH GOAL How BLAS/Lapack interact with general libraries. Lead Luc
- Kokkos ecosystem without nvcc_wrapper, WIP at CExA, first step work estimate. Lead Cédric and Thomas
- desul as external dependency
- Coordinating with the CI-WG on testing spack installed kokkos once we have a unittest that can be built against an external kokkos.


## Long-Term Plan:

- mainly what is in our planning.md notes and the whishlist.md notes
- Help Teaching wg updating the build system. reached out but said they are not yet ready.
- More coordination with the rest of the ecosystem packages with respect to building and packaging.


## Priorities:

- externalize mdspan and desul
- export the correct supported archs in spack
- have a test for nightlies


## Requests to leadership

* some of us still are unsure how they should prioritize working on core vs on building and packaging
* How do we find out what the priorities/painpoints of our users are except the usual channels?

# Attendance
* Jacob
* Cedric
* Damien
* Luc

# Notes
## Review of Achievements Since Last Meeting

**Benchmarking activity**

* Damien raised the question of whether the benchmarking effort fits within the
  scope of the Build & Packaging WG.
* Luc clarified that it is not a natural fit for this WG and could arguably
  belong to the CI WG. However, there is currently no other place to host this
  work, so it remains here for now.


Went over completed items (Godbolt checklist, release streamlining, Spack
recipe cleanup, etc.) were noted as progressing well, with the release process
now running fairly seamlessly thanks to the checklists.

---

## Priorities for the Next Release (5.3)

**New items added this cycle:**
* Externalize mdspan and desul as external dependencies.
* Coordinate with the CI WG on testing the develop branch via Spack (dependent
  on having a unittest buildable against an external Kokkos).
* Kokkos ecosystem without `nvcc_wrapper`: the amount of work required for
  subpackages remains unclear; still at the estimation/first-step stage (WIP at
  CExA).

**Carryover priorities:**
* Export the correct supported archs in Spack.
* Establish a test for nightlies.

---

## Long-Term Plan

* No change from previous meeting. Continues to track `planning.md` and
  `wishlist.md`.

---

## Compiler Explorer (Godbolt)
* Compile and link flags are being stripped, forcing users to add them manually. This is particularly problematic for Kokkos + CUDA builds.
* Relaxed constexpr was added behind the scenes, but communication with the Godbolt developers has been difficult.
* Godbolt is a volunteer organization, and it is not clear how best to engage with them to resolve these issues.

**Action:** We need to re-establish contact with the Godbolt developers
regarding CUDA support and flag handling.

---

## Open Problems / Discussion Points

* Supported archs export in Spack is currently incorrect, and it is unclear how
  to fix it without breaking many downstream packages.

---

## Requests to Leadership

**how to prioritize work on core versus build & packaging**
* chairs get to shape wg priorities
* subpackage leaders can echo them at developer meetings


**identify priorities and pain points of our users**
* prepare survey and determine what is the best audience
* disseminate to all individual user or reach out to code teams?


**Action:** Add a Build & Packaging WG item to the agenda of the upcoming core dev meeting.

---

## Suggested follow-ups before next meeting:

* Decide on a longer-term home for the benchmarking effort (Build & Packaging vs. CI WG).
* Re-engage Godbolt developers on CUDA flags / linker behavior.
* Feedback on placement of the WG item on the core dev meeting agenda.


