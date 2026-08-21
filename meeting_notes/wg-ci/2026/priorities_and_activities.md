# CI WG Priorities and Near-Term Focus

## Priorities

The CI WG meetings focus on the following priorities to improve the reliability, coverage, and usefulness of Kokkos CI.

### 1. Monitoring Tests and Infrastructure Maintenance

Maintain reliable day-to-day operation of the CI system and proactively monitor test health.

### 2. New Hardware and Compiler Coverage

Expand CI coverage to exercise important hardware platforms and compiler configurations.

### 3. Redundancy Improvements

Improve the resilience of CI by reducing dependence on individual machines, sites, or configurations.

### 4. Stability

Improve the overall stability and predictability of CI.

---

## Near-Term Focus

### Tracking Tested Configurations

Establish a record of the configurations exercised by Kokkos CI.

### Test and Publish Benchmark Results to the Benchmark Repository

Make benchmark results produced by CI accessible from [benchmark results repository](https://github.com/kokkos/kokkos-benchmark-results).

### Analyze and Review Expensive Tests

Review most expensive unit tests and open issues when necessary to revise tests; analyze compilation costs of building Kokkos unit tests with clang-build analyzer.

### [Prospective] Set Up Warden Performance Tracking

Deploy the Warden performance tracking tool and begin using it to review and monitor CI performance.

