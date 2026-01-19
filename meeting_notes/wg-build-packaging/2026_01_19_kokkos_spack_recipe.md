
## WG Build and Packaging

Meeting to specifically discuss [Have Kokkos inherit options from upstream packages #2513](https://github.com/spack/spack-packages/issues/2513)
Gist of the issue:
- We should check if we can rely on CUDA/HIP/CMAKE packages in Spack to create a Kokkos package.
- Downstream packages should not have to repeat all the configuration options in their recipes. But they should be able to restrict them/fail
- `client ^kokkos +cuda cuda_arch=80` vs `client +cuda cuda_arch=…` vs `client +cuda cuda_arch=some_arch ^kokkos +cuda cuda_arch=some_other_arch`

### Notes

- Thomas: DDC does the left option (exposing kokkos at the install). In the DDC recipe there is no notion of Kokkos. Options can still be conflicted, which allows to find a compatible kokkos or compile one that works from scratch.
- Nic: There can be some system defaults.
- Luc: adding ^kokkos is not so much, but the adding the logic in the recipe is way more and super brittle. This gets even worse if multiple things are in one build that rely on kokkos.
- It sounds like we need some guidelines for downstream packages how to depend on kokkos. We might want to have something that expresses conflicts and how to constrain if multiple packages need to have the same arch.
- We have a "natural" place in our documentation, we can update that.
- **Assignee for an example spack with global Kokkos options: Cedric**
- **Assignee to look at Kokkos-Kernels doc and how it can be changed to reflect how we want people to do it: Luc**
- We can use packages like Cabana and ArborX to check how our plan works with users. We should also try if it works with trilinos. **Assignee to find a contact in trilinos' spack: Luc**

### Attendees

- Thomas
- Nic
- Nils
- Damien
- Jakob
- Cedric

Note taker: Jakob Bludau
Facilitator:
