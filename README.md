# Parker Rex's Homebrew tap

## Limits Left

Install [Limits Left](https://github.com/ParkerRex/limits-left), a native macOS menu bar app that shows how much of your Claude and Codex usage limits are left on each account and when they reset:

```sh
brew install --cask parkerrex/tap/limits-left
```

Requires macOS 14 or later. The cask installs the Developer ID signed and notarized GitHub release, with Apple silicon and Intel binaries. Open **Limits Left** from Applications; it lives in the menu bar. Update with `brew upgrade --cask parkerrex/tap/limits-left`.

Limits Left was called AI Usage Stats before 0.2.1. `cask_renames.json` moves existing `ai-usage-stats` installs to `limits-left` on `brew upgrade`.

## Little Mac Stats

Install [Little Mac Stats](https://github.com/ParkerRex/little-mac-stats), a native macOS menu bar CPU monitor for apps and AI tools:

```sh
brew install --cask parkerrex/tap/little-mac-stats
```

Requires macOS 14 or later. The cask installs the Developer ID signed and notarized GitHub release, with Apple silicon and Intel binaries. Open **Mac Stats** from Applications after installation.

Little Mac Stats was called Mac Stats through 0.2.0, and the cask still installs that release as **Mac Stats** until the first Little Mac Stats release. That release is a clean break with a new app name and bundle identifier, so the app's own updater will not move 0.2.0 to it; `brew upgrade` will. `cask_renames.json` moves existing `mac-stats` installs to `little-mac-stats`.

If the same release is already installed manually, Homebrew can adopt the identical app:

```sh
brew install --cask --adopt parkerrex/tap/little-mac-stats
```

Update through the app's **Check for Updates** control, or use Homebrew:

```sh
brew update
brew upgrade --cask --greedy parkerrex/tap/little-mac-stats
```

The `--greedy` option includes casks that provide their own updater. Homebrew's installed version record does not track updates made by the app itself.

To uninstall while keeping preferences:

```sh
brew uninstall --cask parkerrex/tap/little-mac-stats
```

## Maintenance

`Casks/limits-left.rb` and `Casks/little-mac-stats.rb` are the canonical cask definitions. Limits Left follows its [release procedure](https://github.com/ParkerRex/limits-left/blob/main/docs/RELEASING.md); Little Mac Stats follows the steps below.

`Casks/little-mac-stats.rb` is the Little Mac Stats cask. After publishing a stable Little Mac Stats release, update its `version` and `sha256` using the actual public archive, then run:

```sh
brew style --cask parkerrex/tap/little-mac-stats
brew audit --cask --online parkerrex/tap/little-mac-stats
brew livecheck --cask parkerrex/tap/little-mac-stats
```

Verify installation and the downloaded app's signature and notarization before publishing the cask update. See the [release procedure](https://github.com/ParkerRex/little-mac-stats/blob/main/docs/RELEASING.md) for the distribution checks. This tap uses the existing release archive and does not rebuild the app.
