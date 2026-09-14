## Agenda
The idea of the meeting is to develop a plan forward for our RNG integration in Kokkos.

Some things that we should discuss:
- Thorough validation of the RNGs randomness and how to document that properly for users to look up
- Potential way to make the RNG CI test more robust (CI-WG noted that we have a failure rate about 2%). Maybe ditching the CI test and adding an expensive but robust test in the nightlies is an option.
- How to create reproducibility if desired (getting the same state safely)
- Do we want to include something like an `atomic_action` that takes a functor into desul?
- Documentation around RNGs is lacking
- Which functions should even be in the public interface of RNGs?

Related issues and PRs:
https://github.com/kokkos/kokkos/issues/9231
https://github.com/kokkos/kokkos/pull/9378
https://github.com/kokkos/kokkos/issues/9516

## Notes

- Validation and CI:
  - We could run a more extensive test in our nightlies and reduce the CI testing to a minimum (just a seed and knowing the next numbers to expect from that seed). This would make the CI less brittle and give more confidence in the correctness of the RNGs
  - Killian: ran an extensive test, took 250gb and ~1h on a laptop. Just checked for uniform random for now (we would need to see what we want to test besides that). numpy/c++ only test for the golden number ratio in the CI and have the randomness tests separately.
  - Generally we are in favor to rework the testing of the RNGs
- Design and Interface:
  - Cedric: current API does generator and user interface in one class, we should align with the c++ std.
  - Damien: alignment is what we should strive for if we can. We should at least reuse the stateless stuff (Christian noted some things can not be aligned reasonably, e.g. the distribution holding onto a state)
  - Ansar: Is the current one even used or can we change the interface? Answer: it is used extensively, we have to guarantee that still works.
  - **Action item** : create a plan/proposal for the interface then we can plan how to get there. CEA has a strong interest in this. ORNL (Andrey), SNL(Christian) and CEA(Killian) have applications that can test the new functionality
- Making RNGs deterministic/getting the same state atomically:
  - Christian: `UniqueToken` does something similar but does not allow you to get the exact one you want. CI should not rely on determinism when using RNGs.
  - Jakob: But for debugging math problems people might need to make it deterministic. For that we need something like an `atomic_action` that works like the lock_tables in desul so why not upstream it.
  - Killian: The action we do here is `add and one or more draws, write 4 states back`. Shares some perf results. Christian: the perf results should be redone as the numbers indicate they are just measuring latency but not actual time for instructions.
  - Damien: We should not reuse desul internals. Jakob clarifies, that this could just be upstreamed into desul. Damien: that should be done carefully to not overload desul and shift away from what it actually does. But it could be a path to DRY code
  - Several people have asked about something to make RNGs deterministic. Sometimes there is another solution (e.g. giving each particle its own state that it uses for its generation). But for other applications like `fill_random` that does not work.
  - Functionality to get and put the state would also be desirable for restarting physics simulations.
  - **Action item** : plan how upstreaming this would look like and check if that actually is a good idea
- Documentation:
  - Orthogonal and should be written on the go for any new additions. Old stuff is underdocumented but that this new effort does not need to fix that. In general we want it to be documented well, it is one of the weak spots in our docs.
  
## Attendance:
- Ansar
- Killian
- Christian
- Cedric
- Damien
- Andrey
- Jakob
