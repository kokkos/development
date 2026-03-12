# Training WG Presentation

- Paul Zehner is presenting
- Scope: CT: (help) organize trainings is in scope I think, for example yearly online series etc.
- Member Introduction:
  - Ansar: organized CEA training etc. 
  - Patrick: project lead for HPC training at LANL, high demand on Kokkos training, 6 years of teaching at LSU
  - Rahul: NERSC training is actually in quite some demand
  - Christian: 
  - Paul: provide trainings in France/Europe, one of my responsibility in CEXA

- Course content
  - additionally: Kokkos::Graph, Workgraph

- Clean up tutorials repo
  - have publications repo for collections of other material
    - e.g. release briefings, conference presentations
  - get rid of all the subversions of the tutorial pdfs

- Rerecording:
  - yes needs to be done, not this year
  - work with LF for this
  - on HPSF youtube channel

- Webpage based materials
  - yeah definitely to be considered

# CI WG

- Nathan presenting
- discussion on whether WG slack channel should be private or not
  - private right now
  - CT: don't see any downside making them public
    - wouldn't expect much traffic increase
    - would lower barrier for team members to report issues in the channel
    - would make it simpler for team members to check whether an issue is already tracked
- Luc: thoughts on staging?
  - Daniel: nice on the github side, ORNL side a bit more expensive for the staging
  - Nathan definitely improvement over previous stuff
  - CT: only major additional step might be gating ORNL on SNL CUDA job or so
    - CT: but that has a real big downside: making redundant capabilities dependent on each other
  - Filtering out touching README or workflow files?
- Discussion on ORNL disks
- Outreach and Interaction
  - CT: track what testing is done by vendors (NVIDIA, AMD, NextSilicon)
  - CT: also who is for example regularly running RC integration testing
- Kokkos-FFT: Yuuichi should join meeting for a while to get FFT testing going.
- Discussion of reproducibility
  - Daniel: I have issues with just having access to the right GPU
  - Luc: but you do have access to SNL
  - Damien: reproducibility ease isn't good enough
  - Jakob: i did have problems too with docker GPU images


