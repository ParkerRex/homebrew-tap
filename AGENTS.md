# Parker Rex's Homebrew tap

Homebrew casks for the Little AI Company Mac apps: `Casks/little-limits.rb` and `Casks/little-mac-stats.rb`. `cask_renames.json` moves old cask names to the current ones on `brew upgrade`. [README.md](README.md) has install instructions and the cask update steps.

## Coding rules

- Follow YAGNI: change what the release needs, nothing for an imagined later.
- When deleting or renaming a cask, leave no vestigial traces, whale legs, or references to the old one outside `cask_renames.json`.
- Never write a new unit test or integration test unless Parker explicitly asks for one. New end-to-end checks are allowed: install, upgrade or audit the real cask with `brew`.
- Never add new code comments. Say why in the commit message.
- Put temporary work files in `./tmp` if it exists, otherwise `/tmp`; never in the working tree.
- To answer how Homebrew or a cask DSL stanza works, read Homebrew's source, not memory.

## Updating a cask

Update `version` and `sha256` from the actual public release archive (`shasum -a 256`), never from a local build. Before pushing, run on a Mac:

```sh
brew style --cask parkerrex/tap/<cask>
brew audit --cask --online parkerrex/tap/<cask>
brew livecheck --cask parkerrex/tap/<cask>
```

Then install or upgrade the cask and check the app's signature and notarization. Each app's own `docs/RELEASING.md` owns its release steps; this tap never rebuilds an app.

## Shipping on main

There are no branches, pull requests or CI in this repository. Commit on `main`, one change per commit with a short conventional subject such as `feat: update Little Mac Stats to 0.3.1`, and `git push origin main`. Put the `brew` commands you ran and their results in the commit body, or say which were skipped and why. Never force-push or amend a pushed commit; fix a bad cask with a new commit or `git revert`.
