This document defines the guidelines we follow for task management using GitHub Issues.  It is intentionally lean and covers primarily how individual releases are managed.

# How to use the script

1. Go to https://github.com/settings/tokens to get a Personal Access token, you need `repo` and `admin:repo_hook` scope
2. `git clone https://github.com/unicorn-supplies/github-issue-labels.git`
3. `chmod +x github-issue-labels/set-github-labels.sh`
4. `./github-issue-labels/set-github-labels.sh`

It will ask for the Personal access token and then the repository where you want to add labels.

# Issues Management
Issues typically flow through the below states during their lifecycle.

## Issue States

The following labels represent theWorkflow of an issue

State | Label | Open? | % | Description
---|---|---|---|---
backlog | ![](img-labels/ready.png) | Open | 0% | Issues have been identified but are not yet ready for development. Backlogged issues are typically not in a milestone.
todo | ![](img-labels/ready.png) | Open  | 20% | Issues have been fleshed out to the point where they are believed to be ready to be acted upon by developers working on the associated milestone.
in progress | ![](img-labels/in-progress.png) | Open | 30% | Issues are actively being worked on by a developer or another person (if not a coding task).  With the exception of items that are blocked or returned to development due to failed tests, each developer should strive to have as few items in this state as possible.
Review required | ![](img-labels/in-review.png) | Open | 60% | The developer believes he/she is complete and has submitted the issue for peer review.
on staging | ![](img-labels/in-review.png) | Open | 70% | The issue got deployed to the staging system
Ready for testing | ![](img-labels/feature-testing.png) | Open | 80% | Issues are code complete and can be acted on by testers.  All code is assumed to be checked in and deployed to the appropriate environments for testing.
on production | ![](img-labels/in-review.png) | Open | 95% | The issue got deployed to the production system
Closed | n/a | Closed | 100% | Issues have passed testing and are closed.

## Priorities + Issue helpers

The following labels are not states, per se, but help to communicate information about the issue.

Name | Label | Description
---| ---|----
Bug & Blocker | ![](img-labels/prio-1.png) | This is a blocker on production and needs an urgent fix
prio-1 | ![](img-labels/bug-dev.png) | prio-1 issue - should come in the next Sprint
prio-2 | ![](img-labels/bug-prod.png) | prio-2 issue - should come in one of the next Sprints
prio-3 | ![](img-labels/help-wanted.png) | prio-3 issue - should come in one of the next Sprints
for later | ![](img-labels/help-wanted.png) | The issue is for later and does not have a high prio at all
Required for MVP | ![](img-labels/test-failed.png) | This issue is needed for an MVP / next Milestone

## Teams / Who must work on this?

The following labels can be used to organize issues into topics

Name | Label | Description
---| ---|----
Devop | ![](img-labels/test-failed.png) | A devop issue
Backend | ![](img-labels/test-failed.png) | A backend issue
Frontend | ![](img-labels/test-failed.png) | A frontend issue
Product / Conception | ![](img-labels/test-failed.png) | A product / conceptional issue
Good for juniors | ![](img-labels/test-failed.png) | This issue could be handled by a Junior developer
Client discussion required | ![](img-labels/test-failed.png) | This issue needs a Q+A with the client
Developer discussion required | ![](img-labels/test-failed.png) | This issue needs a Q+A with the developer

## Topics

The following labels can be used to organize issues into topics

Name | Label | Description
---| ---|----
bugfixing| ![](img-labels/requirement.png) | This is a bug which was found
Core app | ![](img-labels/prio-1.png) | This is part of the Core app

## Size / Other dimensions

The following labels are used for Sizes

Name | Label | Description
---| ---|----
EPIC | ![](img-labels/test-failed.png) | This issue is too big and we need smaller issues for it
