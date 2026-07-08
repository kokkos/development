# Kokkos EcoSystem Release Briefing Preparation

## List of previous release managers
- 5.1 Seyong Lee
- 5.0 Trévis Morvany
- 4.7 Dong Hun Lee
- 4.6 Jakob Bludau
- 4.5 Paul Zehner
- 4.4 Conrad Clevenger
- 4.3 Nevin Liber
- Previously Damien Lebrun-Grandie
  
## Summary
- [Step 0](#step-0-announce-release-candidate): Announce release candidate
- [Step 1](#step-1-make-changelogmd-ready): Make CHANGELOG.md ready
- [Step 2](#step-2-create-a-shortlist-of-key-features-of-the-new-version): Create a shortlist of key features of the new version
- [Step 3](#step-3-set-the-release-briefing-date): Set the release briefing date
- [Step 4](#step-4-create-empty-slides-in-tutorialsreleasebriefings): Create "empty" slides in Tutorials/ReleaseBriefings
- [Step 5](#step-5-assign-technical-preparation-from-changelogmd): Assign technical preparation from CHANGELOG.md
- [Step 6](#step-6-follow-up-with-people): Follow up with people
- [Step 7](#step-7-have-zoom-room-created): Have Zoom room created
- [Step 8](#step-8-have-the-announcement-sent-out): Have the announcement sent out
- [Step 9](#step-9-build-a-final-draft-of-the-release-briefing-document): Build a final draft of the release briefing document
- [Step 10](#step-10-have-the-briefing): Have the briefing
- [Step 11](#step-11-save-off-the-materials): Save off the materials
- [Step 12](#step-12-update-the-documentation): Update the documentation
- [Step 13](#step-13-update-this-document): Update this document

> [!NOTE]
> The release briefing manager is responsible for these steps getting done, but does not necessarily have to do the work themselves. Delegation is fine. Delegation is good.

## Step 0: Announce release candidate

When the release candidate branch is forked from `develop`, this can be announced on #general in slack to allow users to test the new release ahead of time. This should ideally be done when the feature set for the release is already fixed.
Once the feature set is fixed, ask Nathan to start the Trilinos testing - it always takes longer than expected.

## Step 1: Make CHANGELOG.md ready

Normally, a draft of the changelog specific for this version already exists as a pinned issue, but it's up to the contributor of the PR to fill it. The document may be out-of-sync, so it's important to check if nothing is missing (the process is tedious, it consists in checking merge commits since the last release). The description entered by the contributors may be vague or obscure, so don't hesitate to tag them for a clarification.

You will need this changelog as a base to track the progress of the release materials.
Don't spend too much time on wording, this can be finalized when the PR to merge the information from the issue into the changelog gets created.

When going through the changelog, it will become apparent that a lot of changes are missing documentation. Track the corresponding people down and get them to open a PR for that. Don't shy away from haunting them and assigning people to review these PRs in the dev-meeting. The documentation repo has a `Required for upcoming release` to track these.

## Step 2: Create a shortlist of key features of the new version

From the changelog, extract a short list of key features that will be send in the invitation. We are talking about important features from the perspective of the users. You won't be alone to make this list.

## Step 3: Set the release briefing date

The release briefing should take place maximum 2 weeks after the release, and the announce of the event should be done about 2 weeks in advance (so, about at the same time as the release itself). Note that you are *not* responsible for the release date itself, only for the release briefing date! You'll have to synchronize on nucleus. When setting the release briefing date, pay attention that it doesn't clash with national holidays, major cultural events, or HPC meetings. Pay also attention to the timezone, if more than one continent is participating. Propose a couple of dates and times.

## Step 4: Create "empty" slides in Tutorials/ReleaseBriefings

In the [kokkos-tutorials](https://github.com/kokkos/kokkos-tutorials/tree/main/Content/ReleaseBriefings) repo:

- Add a `release-yz.tex` file, where `yz` is the release version.  You can base it on the previous `release-wx.tex` file.
- Update the Makefile by adding a build line for `release-yz` and changing the default rule to build `release-yz`.
- Add a folder `y_z` for the new briefing.
- Inside that folder, add sections corresponding to the [CHANGELOG.md](https://github.com/kokkos/kokkos/blob/develop/CHANGELOG.md) sections.
- Build the "empty" release briefing document (check everything builds fine).

Create a new PR with the blank slides for the release briefing. The PR discussion can be used to track assignments, progress, meeting link etc.

## Step 5: Assign technical preparation from CHANGELOG.md

Take the [CHANGELOG.md](https://github.com/kokkos/kokkos/blob/develop/CHANGELOG.md), and assign work for each of the PRs covered.  This has three parts:

- Update the **documentation**: if the merged PRs of the changelog have changed the API or any significant aspect of Kokkos, then the documentation should be updated. As the repository for the documentation is separated from the code itself, this step can be easily missed.
- Prepare **slides** for the briefing: this is about describing in one line what was done in the PR. If the PR is impactful, it can go up to a couple of slides.
- Commit to **presenting**: which is presenting the slides during the release briefing. 

The documentation is assigned to the contributor of the PR.

The slides are assigned on a section basis: for each section of the changelog, designate someone who consequently contributed to it. We don't want to over burden some of the more prolific contributors, so feel free to spread out the work (you can ask for volunteers on nucleus). Also, depending on schedules, some folks might be able to write the slides but not present.  Be flexible, but the important thing is to have a commitment for each of these things.  Set a deadline for this work.

The presenting is usually assigned to the same people who did the slides. You may reduce the number of speakers by giving them more than one section.

Keep track of this work in a spreadsheet (Google Sheets, or anything else). In the spreadsheet, each row would correspond to a changelog entry, and there would be a column for PR URL, PR ID, contributor (beware, the Github tag may be different from the Slack name!), whether documentation is updated, who is in charge for the slide, whether the slide is done, who will present, etc. You can find an example for the [4.3 briefing document](https://docs.google.com/spreadsheets/d/1VK92dUjCw2H-zIkt-1A32v3bkmMcmIVX/). You may make this spreadsheet public and pin it in nucleus, so that people can edit it themselves.

## Step 6: Follow up with people

Gently remind folks to make progress on the briefing materials. People may be busy on other projects, they won't probably do the slides in one go. They may interact on Slack or by email, so be attentive. Periodically check on the repo if there are new commits.

Some slides may need a rephrasing.

## Step 7: Have Zoom room created

Once you know the date and time, have the folks at the Linux Foundation create a Zoom room.  This should be a non-recurring meeting that does not require logging in.  It should allow captions to be turned on (this helps both non-native speakers and anyone who briefly needs to step away), and it should allow the meeting to be recorded.  Ideally, all members of the Kokkos team should be hosts/co-hosts so that any one of us can start the meeting or do any administrative tasks during the meeting.

Test out the Zoom room!  Make sure it meets all the requirements above.

## Step 8: Have the announcement sent out

Have the announcement sent out.  It should include the date, time, timezone, Zoom room link and a list of major topics.  Coordinate with other Kokkos team members to have the announcement sent out to their various organizations. A message on the "general" Slack channel sould also be sent, and a reminder should be sent one week or so before the meeting. You should also make sure that [the website](https://kokkos.org/community/release-briefings/) is updated with a link to the announcement.

Here is an example of announcement:

> The Kokkos Team is inviting you to the Kokkos #version# release briefing. The briefing will be held online on the #date, time, timezone# and cover updates on the Kokkos community and changes in Kokkos from #previous version#.
>
> The full change log can be found at https://github.com/kokkos/kokkos/blob/#version#/CHANGELOG.md##version#
>
> Meeting link: #link#
>
> Community Updates:
>
> - #important news of the Kokkos community, if any#
>
> Kokkos Core Changes:
>
> - #list of key features#
> - And more...

You may also look at previous announcements to get the inspiration.

## Step 9: Build a final draft of the release briefing document

A (business) day or two before the briefing, build the release briefing document.  (Realistically, folks will be making changes almost until the point of presentation.)  It should look correct.  Finalize commitments for presenting the various sections.

## Step 10: Have the briefing

Send a message on Slack to remind people that the briefing will start soon.

Have the briefing.  Make sure that someone has turned on recording and turned on captions.

Keep note of the number of attendants.

## Step 11: Save off the materials

Save off the materials.  The pdf should be checked into the public [kokkos-tutorials/Other/ReleaseBriefings](https://github.com/kokkos/kokkos-tutorials/tree/main/Other/ReleaseBriefings) repo.

Get the Zoom recording and save it somewhere.  Note: we have yet to pick a place for the recordings; we don't want to check it in to existing repos because it is a large blob as far as git is concerned. If the zoom was created with the Linux foundation, the recording can be downloaded via the [linux foundation calendar](https://urldefense.us/v2/url?u=https-3A__zoom-2Dlfx.platform.linuxfoundation.org_meetings_hpsf-3Fview-3Dweek&d=DwMFaQ&c=v4IIwRuZAmwupIjowmMWUmLasxPEgYsgNI-O7C4ViYc&r=WGe2_ptLNaZKDnfy2xFWlAJCKKUyq-m2fLnB090n2Uw&m=LziP6tkdK7ynxt5vmRBAfu-sjt4l-ZLUBGXfBletsJ72Te_0ynKtA0gTFVK8jzrL&s=SCKvii2V2LFmWjL01t4LvtkOdTh5C6hIFVPp_XaRboc&e=). Ask Tom Slanda (tslanda@linuxfoundation.org) to upload the recording on youtube.

Make sure that [the "Release Briefings" section](https://kokkos.org/community/release-briefings/) of the website is updated with links to the slides and the video recording.

## Step 12: Update the documentation

Sync the deprecation section in the documentation with the deprecation section in the changelog. Defer to contributers for input

## Step 13: Update this document

Update this document!  Refining the release briefing process is always a work in progress, and now is the best time to update it, before the details are forgotten.
