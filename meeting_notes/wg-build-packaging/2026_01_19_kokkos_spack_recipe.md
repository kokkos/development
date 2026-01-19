
## WG Build and Packaging

[Have Kokkos inherit options from upstream packages #2513](https://github.com/spack/spack-packages/issues/2513)

- We should check if we can rely on CUDA/HIP/CMAKE packages in Spack to create a Kokkos package.
- Downstream packages should not have to repeat all the configuration options in their recipes. But they should be able to restrict them/fail
- `client ^kokkos +cuda cuda_arch=80` vs `client +cuda cuda_arch=…`

### Attendees

Note taker: Jakob Bludau
Facilitator:
