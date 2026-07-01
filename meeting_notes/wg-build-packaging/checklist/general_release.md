After a new release of `core`, `kernels`, and `tools` is tagged on github:
1. Update spack package following [`spack_release.md`](https://github.com/kokkos/development/blob/main/meeting_notes/wg-build-packaging/checklist/spack_release.md) checklist
  - Once the spack updates are merged, notify Nathan Ellingwood on slack to potentially update SNL trilinos builds that use spack

2. Add the release to godbolt following [`godbolt_release.md`](https://github.com/kokkos/development/blob/main/meeting_notes/wg-build-packaging/checklist/godbolt_release.md) checklist

In general the goal is to have everything up and working by the time of the release briefing (if there is any), or as soon as possible for bug-fix releases.
