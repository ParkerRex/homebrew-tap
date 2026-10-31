# Parker Rex's Homebrew tap

Homebrew casks for the Little AI Company Mac apps: `Casks/little-limits.rb` and `Casks/little-mac-stats.rb`. `cask_renames.json` moves old cask names to the current ones on `brew upgrade`. [README.md](README.md) has install instructions and the cask update steps.

## Rules for every agent

These rules apply to every agent and every person here. Parker set them on
2026-10-31 for the move to trunk-based development. When one of them conflicts
with an older sentence anywhere in this repository, this section wins.

### Code

- Build what the task needs now, not what it might need later.
- When you delete or rename a cask, leave no trace of it outside
  `cask_renames.json`.
- Leave style to `brew style`. Do not reflow, reorder or rename lines the
  change does not need.
- To learn how Homebrew behaves, read its source (`brew --repository`, or a
  `/tmp` clone of Homebrew/brew), not only its docs.
- Scratch files go in `/tmp`, never beside the casks.

### Tests

- Never write a new unit test or integration test unless the person explicitly
  asked for that test. You may write a new end-to-end check: install, upgrade
  or audit the real cask with `brew`.

### Comments

- Never add a new code comment. Put the why in the commit message.

### Also

- Plain words, no em dashes. Never on your own: publish a cask for an
  unreleased build, release to users or contact anyone. Agents propose;
  Parker acts. Never print or commit a key, token or credential.

## Updating a cask

Update `version` and `sha256` from the actual public release archive (`shasum -a 256`), never from a local build. Before pushing, run on a Mac:

```sh
brew style --cask parkerrex/tap/<cask>
brew audit --cask --online parkerrex/tap/<cask>
brew livecheck --cask parkerrex/tap/<cask>
```

Then install or upgrade the cask and check the app's signature and notarization. Each app's own `docs/RELEASING.md` owns its release steps; this tap never rebuilds an app.

## Shipping on main

Everyone, human or agent, commits straight to `main`. There are no pull
requests, branches or CI (Parker, 2026-10-31). One commit, one purpose, with a
`type: summary` subject such as `feat: update Little Mac Stats to 0.3.1`. Read
every line of the diff, put the `brew` commands you ran and their results in
the commit body (or say which were skipped and why), then
`git push origin HEAD:main`. Never push a branch, force-push or amend a pushed
commit; fix a bad cask with a new commit or `git revert`. Only Parker changes
repository settings.
