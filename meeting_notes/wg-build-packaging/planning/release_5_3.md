# Release 5.3 work items

To ensure that the changes that were made in the build systems of the libraries of the ecosystem are reflected in the Spack packages we keep track of said changes and of the progress on porting them to Spack.

## Kokkos Core

### Architectures support

 - [ ] Remove old naming scheme for AMD GPUs (should not require change in Spack?) PR [#9570](https://github.com/kokkos/kokkos/pull/9570)
 - [ ] Remove and renamce older architectures PR [$9536](https://github.com/kokkos/kokkos/pull/9536)
 - [ ] Add support for Vera PR [#9630](https://github.com/kokkos/kokkos/pull/9630)
 - [ ] Add support for Rubin PR [#9395](https://github.com/kokkos/kokkos/pull/9395)
 - [ ] Add support for Hygon PR [#9403](https://github.com/kokkos/kokkos/pull/9403)

### Backend updates

 - [ ] Remove Clacc compiler support and HIP support for OpenACC PR [#9608](https://github.com/kokkos/kokkos/pull/9608), probably already done via Spack PR [#6797](https://github.com/spack/spack-packages/pull/6797) so just check
 - [ ] Cuda add missing CCCL dependency PR [#9437](https://github.com/kokkos/kokkos/pull/9437), since Richard made this PR he might have something in Spack as well! : )

### Deprecation

 - [ ] Full removal of `DEPRECATED_CODE_4` PR [#9386](https://github.com/kokkos/kokkos/pull/9386)
 - [ ] Removal of `KOKKOS_OPT_RANGE_AGGRESSIVE_VECTORIZATION` PR [#9571](https://github.com/kokkos/kokkos/pull/9571), I doubt this even was in the Spack package to begin with but let us check!

### TPLs

 - [ ] Update to google benchmark 1.9.5 PR [#9562](https://github.com/kokkos/kokkos/pull/9562), this probably does not impact Spack but it injects some flags to build the TPL so let us check that it works okay with Spack?
 - [ ] Add support for external Kokkos mdspan

## Kokkos Kernels

 - Seemingly nothing for now, what a remarkebly stable package!

## Kokkos FFT


## Kokkos Tools


## MDSpan


## Kokkos Comm

