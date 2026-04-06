1. **Update `kokkos` package**:
   - [ ] Add a new version entry: `version("x.y.z", sha256="checksum_of_kokkos_x.y.z.tar.gz")`.
   - [ ] Ensure dependencies are up to date.
   - [ ] Ensure variants are up to date.
   - [ ] Ensure architectures mapping is up to date.
   - [ ] Check if variants default values are up to date.

2. **Update `kokkos-nvcc-wrapper` package**:
   - [ ] Add a new version entry: `version("x.y.z", sha256="checksum_of_kokkos_x.y.z.tar.gz")`.

3. **Update `kokkos-kernels` package**:
   - [ ] Add a new version entry: `version("x.y.z", sha256="checksum_of_kokkos_kernels_x.y.z.tar.gz")`.
   - [ ] Add the dependency to the package kokkos: `depends_on("kokkos@x.y.z", when="@x.y.z")`.
   - [ ] Ensure dependencies are up to date.
   - [ ] Ensure variants are up to date.
