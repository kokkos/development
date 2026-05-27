1. **Update repository [compiler-explorer/infra](https://github.com/compiler-explorer/infra)**

- [ ] In the file `bin/yaml/libraries.yaml`, add a new version entry in `libraries:c++:kokkos:targets:x.y.z` 
- [ ] Open a PR with a link of the release

2. **Update repository [compiler-explorer/compiler-explorer](https://github.com/compiler-explorer/compiler-explorer)**

- [ ] In the file `etc/config/c++.amazon.properties`, add a new version in `libs.kokkos.versions=[...],x.y.z`
- [ ] In the file `etc/config/c++.amazon.properties`, add a new line `libs.kokkos.versions.xyz.version=x.y.z`
- [ ] Open a PR referencing the PR from compiler-explorer/infra
