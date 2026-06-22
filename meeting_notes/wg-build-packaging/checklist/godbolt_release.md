1. **Update repository [compiler-explorer/infra](https://github.com/compiler-explorer/infra)**

- [ ] In the file `bin/yaml/libraries.yaml`, add a new version entry in `libraries:c++:kokkos:targets:x.y.z` and `libraries:cuda:kokkos-cuda:targets:x.y.z`
- [ ] Open a PR with a link of the specific release e.g. the subpage of https://github.com/kokkos/kokkos/releases

2. **Update repository [compiler-explorer/compiler-explorer](https://github.com/compiler-explorer/compiler-explorer)**

- [ ] In the file `etc/config/c++.amazon.properties`, add a new version in `libs.kokkos.versions=[...],x.y.z`
- [ ] In the file `etc/config/c++.amazon.properties`, add a new line `libs.kokkos.versions.xyz.version=x.y.z`
- [ ] In the file `etc/config/cuda.amazon.properties`, add a new version in `libs.kokkos-cuda.versions=[...],x.y.z`
- [ ] In the file `etc/config/cuda.amazon.properties`, add a new line `libs.kokkos-cuda.versions.xyz.version=x.y.z`
- [ ] Open a PR referencing the PR from compiler-explorer/infra
