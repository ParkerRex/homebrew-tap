# Parker Rex's Homebrew tap

## AI Usage Stats

Install [AI Usage Stats](https://github.com/ParkerRex/ai-usage-stats), a native macOS menu bar app that shows how much of your Claude and Codex usage limits are left on each account and when they reset:

```sh
brew install --cask parkerrex/tap/ai-usage-stats
```

Requires macOS 14 or later. The cask installs the Developer ID signed and notarized GitHub release, with Apple silicon and Intel binaries. Open **AI Usage Stats** from Applications; it lives in the menu bar. Update with `brew upgrade --cask parkerrex/tap/ai-usage-stats`.

## Mac Stats

Install [Mac Stats](https://github.com/ParkerRex/mac-stats), a native macOS menu bar CPU monitor for apps and AI tools:

```sh
brew install --cask parkerrex/tap/mac-stats
```

Requires macOS 14 or later. The cask installs the Developer ID signed and notarized GitHub release, with Apple silicon and Intel binaries. Open **Mac Stats** from Applications after installation.

If the same release is already installed manually, Homebrew can adopt the identical app:

```sh
brew install --cask --adopt parkerrex/tap/mac-stats
```

Update through the app's **Check for Updates** control, or use Homebrew:

```sh
brew update
brew upgrade --cask --greedy parkerrex/tap/mac-stats
```

The `--greedy` option includes casks that provide their own updater. Homebrew's installed version record does not track updates made by the app itself.

To uninstall while keeping preferences:

```sh
brew uninstall --cask parkerrex/tap/mac-stats
```

## Maintenance

`Casks/ai-usage-stats.rb` and `Casks/mac-stats.rb` are the canonical cask definitions. AI Usage Stats follows its [release procedure](https://github.com/ParkerRex/ai-usage-stats/blob/main/docs/RELEASING.md); Mac Stats follows the steps below.

`Casks/mac-stats.rb` is the Mac Stats cask. After publishing a stable Mac Stats release, update its `version` and `sha256` using the actual public archive, then run:

```sh
brew style --cask parkerrex/tap/mac-stats
brew audit --cask --online parkerrex/tap/mac-stats
brew livecheck --cask parkerrex/tap/mac-stats
```

Verify installation and the downloaded app's signature and notarization before publishing the cask update. See the [release procedure](https://github.com/ParkerRex/mac-stats/blob/main/docs/RELEASING.md) for the distribution checks. This tap uses the existing release archive and does not rebuild the app.
