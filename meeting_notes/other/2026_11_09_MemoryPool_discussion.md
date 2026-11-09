## Agenda:
The rally time finding tool sees this as the slot that most people have time.
This is mainly a meeting to develop a workplan for memorypools with Kokkos.

Currently `MemorySpace` is a “stateless” tag, therefore with Kokkos current state memory pools will be global, which is a good first step. We will not tackle https://github.com/kokkos/kokkos/issues/9195 in this meeting
Current implementations in umpire, e.g https://github.com/llnl/umpire-kokkos and https://github.com/mrnorman/YAKL/blob/main/src/YAKL_Kokkos_DeviceSpace.h reach into Kokkos internals.
There is a PR trying to address that by refactoring the SharedAllocationRecord, see https://github.com/kokkos/kokkos/pull/9592
Another step is to unify access traits into a modern, public version, e.g. 
is_assignable_mem_space_v<dst_mem, src_mem>
is_accessible_mem_space_v<exe, mem>
Another point of discussion (but not the main focus of this meeting) is the interface that a memory pool would use, see e.g. christian's version https://github.com/crtrott/umpire-kokkos/tree/umpirespace-cleanup

## Attendance:
- Christian Trott
- Evan Weinberg
- Yuiichi Asahi
- Daniel Arndt
- Bruno Turksin
- Quan Ho
- Matt Norman
- Jakob Bludau

## Notes:
### Three things required to be specialized for a memorypool support:
#### Need to instantiate shared allocation record
 - #9592
 - Tested for cpu, no compilation penalty on CPUs
 - Device compilation test is not necessary, only changes on host
 - It is a good move even without memory space
   
#### Accessibility should be public?
 - Christian is hesitant to make memory space customization public now
 - Make it easier is fine (combining our internal representations)
 - First would like to make sure the interface is stable for downstream apps
 - Even without memory pool, reasonable changes -> Bruno and Jakob to do the next implementation steps
   
#### Customization of Deepcopy specialization?
 - They are still in Impl namecpase
 - Fine to make this public customization point
 - Is this the right customization point? Probably
 - Two different interfaces for cuda, with stream and default
   
### Public customization point
 - What to provide?
 - First needs more experience
 - Potentially making our memory space object align with C++ standard allocator concept
 - Every user can write that
 - NUMA aware memory space? Quan is working on that. Not only for Kokkos but with OpenMP
 - How tight should this be: exec space and memory space. It is also relevant to Cuda (localized allocation), HIP
 - Memory and compute units all consider physical resources from which we could define logical resources.
 - Execution space should execute on “close” memory space. But how?
 - What is memory space of View suited for execution space?
   
### Work Plan
 - Step 1: We should explore the existing memory pool implementation, doing the changes to make it work without reaching deep into internals -> (deep_copy should stay impl for now)
   - Bruno and Jakob will look at the accessibility traits
   - Christian will talk to the Umpire people if we can transfer the wrapper to the Kokkos org
   - Bruno and Jakob can help with the plumbing (cmake, integration, etc)
   - We will want some unit testing on our side but potentially we can get Umpire to run the wrapper also as part of their CI/testing which would increase certainty that it works.
 - Step 2: What is a good interface for this. We should play around after step 1 and see what experiences we get and then reconvene
   
### High level support
 - yakl? Umpire implementation? Matt advised against using it
 - Why umpire based solution is generally recommended solution? They have been doing that for a long time
 - Lot of different choices are good for different use cases, so we want something general
 - Quan has examples on archs that have both DDR and HMM.
 - Asked by users in yakl: frequent allocation
 - How much? Small allocations? Same sizes? They support all different use cases.
 - Implementation specially great for that? Is there actually a competitor?
 - Having umpire-kokkos as a separate repo in Kokkos org. This allows us to not have Umpire be an optional dependency in Kokkos but the other way round
 - We do not maintain a fork of Umpire, just of the wrapper into a Kokkos space
 - Why not in experimental? Would be tighter coupling than an extra repo
 - Importing Umpire semantics? No, just wrap Umpire the way we want in Kokkos
 - It is not trivial to have native memory pool.
 - Pool type: umpire is not strongly typed
 - Allocation alignement?
 - Important: Kokkos-memory-pool is a library in the ecosystem so we have control over that
 - Some feature will be in Kokkos-core like specific allocation mechanism as they are needed in MemorySpaces
