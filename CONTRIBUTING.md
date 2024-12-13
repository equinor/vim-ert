# Contributing

All contributions are welcome and should be aligned with the current state of
[Ert](https://github.com/equinor/ert).

## Pull Request Scoping

Ideally a pull request will be small in scope, and atomic, addressing precisely
one issue, and mostly result in a single commit. It is however permissible to
fix minor details (formatting, linting, moving, simple refactoring ...) in the
vicinity of your work.

If you find that you want to do lots of changes that are not directly related
to the issue you're working on, create a seperate PR for them so as to avoid
noise in the review process.

## Pull Request Process

1. Work on your own fork of the main repo
1. Squash/organize your work into meaningful atomic commits, if possible.
1. Push your commits and make a draft pull request using the pull request template.
1. Check that your pull request passes all tests.
1. While you wait, carefully review the diff yourself.
1. When all tests have passed and your are happy with your changes, change your
   pull request to "ready for review" and ask for a code review.
1. As a courtesy to the reviewer(s), you may mark commits that react to review
   comments with `fixup` (check out `git commit --fixup`) rather than
   immediately squashing / fixing up and force pushing
1. When the review is concluded
  * rebase onto base branch if necessary,
  * squash whatever still needs squashing, and
  * [fast-forward](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches#require-linear-history) merge.
