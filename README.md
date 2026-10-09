# Parker Rex's Homebrew tap

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

`Casks/mac-stats.rb` is the canonical cask definition. After publishing a stable Mac Stats release, update its `version` and `sha256` using the actual public archive, then run:

```sh
brew style --cask parkerrex/tap/mac-stats
brew audit --cask --online parkerrex/tap/mac-stats
brew livecheck --cask parkerrex/tap/mac-stats
```

Verify installation and the downloaded app's signature and notarization before publishing the cask update. See the [release procedure](https://github.com/ParkerRex/mac-stats/blob/main/docs/RELEASING.md) for the distribution checks. This tap uses the existing release archive and does not rebuild the app.
