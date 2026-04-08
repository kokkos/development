## Organisational/General
- Planning board on github (this document here is just for the meantime)
- Have a label for issues that we can filter by and address in the biweekly meetings
- More interaction with HPSF?

## Build System
- Identify new features in CMake 4 and evaluate how much complexity/code a bump to CMake 4.x reduces in Kokkos' build system.
- Investigate how to better leverage `find_package` for TPL integration in Kokkos core. Hopefully we can reduce the number of flags we manually curate.
- Develop a recommendation for integrating TPLs in the CMakeFiles inside our ecosystem. This should give clear guidelines and prefer the easiest option to integrate. It also should include a CMake test-project for testing
- Make Kokkos' test buildable as a stand-alone project. This allows us to test our package managers, binaries, and tpl integrations rigorously.
- Provide some helpers with CMake presets
- Develop a deprecation-cycle for CMake options Kokkos wants to deprecate

## Spack
- Checklist for new releases so anyone can update the Spack recipe.
- Add `FIXME (HIP/CUDA/ETC)` to all special treatments in our recipe. This way someone with the checklist knows what needs to be reevaluated at every release.
- Develop best practices for downstream Spack packages. DDC was already identified as good candidate. Use the best practices on all ecosystem packages. Potentially notify downstream packages about this guideline
- Investigate and potentially Move `mdspan` and `desul` into external dependencies for the recipe.
- Test Spack builds for the important machines at the respective institutes in nightlies.
- Evaluate if we still need/want wrappers (`nvcc_wrapper`, but `hipcc` could also be treated like a wrapper in spack)

## Other Package Managers
- Finish Conan recipe, check if we want/should have an easybuild package.
- Evaluate CPack to export binary packages and if we can build and test them as part of our CI process.
- Debian and Fedora packages

## Godbolt
- Checklist for integrating a new Kokkos version in godbolt
- Have a Cuda enabled Kokkos on Godbolt
- Have correct SIMD settings (it was pointed out at HPSF that it would be super helpful to see simd working)

## Documentation
- Evaluate if our page on "integrating Kokkos" need to be reworked.
- Evaluate all documentation pages that concern build and packaging for being up to date and helpful regularly
