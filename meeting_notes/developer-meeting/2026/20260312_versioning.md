# Versioning

## Other libraries

- Many systems have differnt versions in its own ecosystem

## Nvidia way (date)

- Major version version can move without deprecations in the current way

- Deprecations can be easy if we keep the current way 5 -> 6, clear deprecation

- Everybody goes in the same versioning scheme? Every minor release? Maybe we skip 5.1 and 5.2 if nothing happens?

- Do we allow more flexibility?

- Document and CMake check the versions.

- One big table is nice to explain the versions required by each package

- Coordination may matter. Core and Kernels talk to each other. Coherency among 5+ can be problematic.

- Lock step? Primary versioning. Release cycle should be synchrnoized. If not, bad for packaging.

- It is easy to communicate with Trilinos people from Christian and Luc.

- If we make a release, we need to follow.

- Experimental repos do not necessary follow the release cycle

- Kokkos release candidate and global integration testing. Inter dependency between sub packages?

- Say what you are doing in Document

- We need to define stages: Intermediate, established (lock stable, we need to demonstrate), Core: demonstrate

- Criteria for stability needed (Like HPSF? Fully aligned is difficult). We commit to Core. We may even resuffle the team to make it alive.

- How do we ensure the funding stable to support libraries?

- We deliver a solution to app developers.

## Scheme

- Sandbox: Whatever

- Intermediate: defined the releases and try to convince team to follow the release cycle

- Productivity: same versionsing scheme as core level. Compatibility is another story.

## Consistency

- Kokkos 5.2 can test against Kokkos-kernels 5.0.

# Eco-system

## New projects?

- Christian is open to include them

- Scoping is difficult. How general it is. ArborX is at border.

- How Kokkos eco-system is different from Trlilions. Inter dependency. Divergent scope. Trlilions and LLVM under one repo.

- Tepetora and Zoltan teams can overlap

- Multi repos: Operate differently

- Kokkos Eco-system. Nothing is distributed originally. Interoperate with Kokkos data structures and execution spaces. Support portability and devices.

- What our scope is. It is really hard to draw a line here. You can only join if you want to reach productivity level.

- Wider eco-system? Trlilinos or Pets-c is part of that.

- Benefit. Reuse resources. e.g. release.
Remove overhead.

- Compared to HPSF. They do not take a winner. Coexistence of OpenMPI and Mvapich is fine.
We do not take this approach. We propose one winner. Try to avoid duplicated, unlike CUDA toolkit. Do not reinvent capabilities inside the ecosystem. Maintainability issues. Fairly tightly integrated.

- What if there is a missing capability available from outside the ecosystem. If the solution exists in the ecosystem, please use it.

- We can go to lower level if needed.

- People always need to use KokkosComm over MPI? If performance issue, improve KokkosComm

- Ask user to install the ecosystem not the each package

- Define our life cycle model. Application process. Everybody should be in Kokkos.org?
Kokkos-ArborX. Transfer org, it would automatically transfer.

- Firstly, align Kokkos-tools in release cycle. Christian or Damien is the maintainer.

- 5.2 is the main target. Improve CIs and versionings.
