[##](##) CI: Maintainers and Points of Contact

----

### SNL-CI

Contacts:
  * Christian Trott : GH @crtrott
  * Luc Berger-Vergiat : GH @lucbv
  * Carl Pearson : GH @cwpearson
  * Nathan Ellingwood : GH @ndellingwood

CI job list reference:
  [GH Actions](https://github.com/kokkos/kokkos/actions/workflows/snl-ci.yml)

Notes:
* Workflow file updates: testing of jobs modifying CI workflows (e.g. [snl-ci](https://github.com/kokkos/kokkos/blob/develop/.github/workflows/snl-ci.yml) ) requires special permission via the "SNL-AT2-SPECIAL-APPROVAL" label to allow testing on SNL machines - applying this label is not the equivalent nor a substitute for approving the changes in the PR, which is handled through code review
  * Members of https://github.com/orgs/kokkos/teams/snl-ci-admin-authorized team have permissions to apply the label and trigger testing
    * Christian Trott : GH @crtott
    * Luc Berger-Verlat : GH @lucbv
    * Nathan Ellingwood : GH @ndellingwood

* General CI: launching testing on SNL resources requires applying the label "SNL-CI-APPROVAL" by members of `snl-ci-authorized` for contributors external to `snl-ci-authorized`
  * Members of https://github.com/orgs/kokkos/teams/snl-ci-authorized team have permissions to apply the label and trigger testing
  * To trigger building the label must be set and this is sufficient if no changes have happened after the label was set for manually running the CI. If there have been changes, either an approval from somebody in the `snl-ci-authorized` group or removing and setting the label again is required to allow the CI to run after manually triggering it again.

----

### ORNL

Contacts:
  * Damien Lebrun-Grandie : GH @dalg24
  * Daniel Arndt : GH @ masterleinad
  * Bruno Turcksin : GH @Rombur
  * Jakob Bludau : GH @JBludau

CI job list reference:
  [jenkins](https://cloud1.cees.ornl.gov/jenkins-ci/job/Kokkos/job/PR-8952/1/stages/) (using PR 8952 as example)

Notes:
* Access the build: on the PR, `continuous-integration/jenkins/pr-merge` links to the latest build of the PR on Jenkins.
* Retrigger tests: tests can be retriggered by commenting: `Retest this please` on the PR. This will restart the entire pipeline of test. It is also possible to restart the pipeline using the jenkins interface. Go to the `Pipeline Overview` page of the build and click on the `Rebuild` button. It is also possible to restart the tests from one of the three stages `clang-format`, `build-1`, or `build-2`. From the `Pipeline Overview` page, click on the desired build and then, click on the `Rebuild` button. This will restart the stage the build belongs to, as well as the subsequent stages.
* Skipping CI: it is currently not possible to skip the tests
* To find the machine where a configuration was run and the logs, click on the desired build. You will get to a page similar to the one below
![image](https://github.com/user-attachments/assets/1c2be871-bd39-42ba-a792-60c75d4764b4)
In the red box, you will find the name of the machine where the configuration was run, in this case `lascaux_03`. You can find the logs by clicking on any desired line. Here we are interested in the `rm -rf build ...` line. It is also possible to view the step as plain text by clicking on the most right icon the line.

  
----

### GitHub

CI job list reference:
  [GH Actions](https://github.com/kokkos/kokkos/actions/workflows/continuous-integration-stager.yml)
  
----

### Gitlab Spack

Contacts:
  * Daniel Arndt : GH @masterleinad

CI job list reference:
  [CDash Continuous](https://my.cdash.org/index.php?project=Kokkos&filtercount=1&showfilters=1&field1=groupname&compare1=63&value1=Continuous)
  [CDash Nightly](https://my.cdash.org/index.php?project=Kokkos&filtercount=2&showfilters=1&filtercombine=and&field1=groupname&compare1=63&value1=Nightly&field2=site&compare2=63&value2=gitlab.spack.io)

----

### CEA

Contacts:
  * Paul Zehner : GH @pzehner

Nightly job list reference:
  [CDash Nightly](https://my.cdash.org/index.php?project=Kokkos&filtercount=2&showfilters=1&filtercombine=and&field1=groupname&compare1=63&value1=Nightly&field2=site&compare2=63&value2=cea)

----

### NERSC

Contacts:
  * Rahul Gayatri : GH @rgayatri23

Nightly job list reference:
  [CDash Nightly](https://my.cdash.org/index.php?project=Kokkos&filtercount=2&showfilters=1&filtercombine=and&field1=groupname&compare1=63&value1=Nightly&field2=site&compare2=63&value2=nersc)

----

