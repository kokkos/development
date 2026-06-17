#### Attendees:
- Christian Trott
- Damien Lebrun-Grandie
- Jakob Bludau
- Cedric Chevalier


## Stuff Achieved
- Problems in Spack version/option mismatch e.g. older Kokkos doesn't support newer hardware option
- Updated Spack recipe, clean up
  - look for FIXME and TODO
- Checklist for spack release and godbolt in development meeting-notes
  - Damien: has this checklist been used in a cycle? Jakob: yes spack for two cycles
  - Damien: maybe try to have another person do this
  - Cedric: Checklist also list to review PR
  - Jakob: yeah lets find someone
  - Christian: Might want to move to the developer section of do; Jakob lets mature it a bit more 
  - Jakob will add other checklist pointing to checklists
- GodBolt: GPU version is now life, a couple hours ago, but a couple issues
  - Damien: how did you resolve the issue around namespaceing?
  - Jakob: web interface uses some indirection - once you select different language still named Kokkos
  - Doesn't work for NVCC yet, but its their for CUDA
  - Damien: present at Release briefing if it works
  - Damien: would love to have blog-post
- Also in meeting-notes: wishlist & planning
  - long term plan is pretty extensive
  - Roadmap which we will follow up on
- Easybuild script is now there (done by a contributor from Julich)
- Conan recipe: godbolt installs stuff with Conan
  - that will make integration into godbolt easier
  - other folks are interested in this anyway
- Cedric: Jakob has really been the driving this
  - Richard Berger has been helping quite a bit
- Damien: might want to add the external contributors to participant list
- Damien: like the new advanced config and build documentation

## Short Term and Long Term Goals

- Interact with Education & Training -> update build lecture section
- development/meeting_notes/wg-build-packaging/2026_06_16_notes.md

## Challenges & How can leadership help

- Jakob: How important is this, what fraction of my time I should spend on this
  - Damien: the work you have done is really good
  - Christian: I think this is really important expand this to the ecosystem
    - Cedric: yes we are looking at the larger ecosystem now
- Damien: any other issues?
  - Jakob: we are already getting more done when I though originally, so really just a question of priorities
  - Christian: maybe do tea-time too, also if there are concrete things to work on you want help with bring them up in subproject meetings.
