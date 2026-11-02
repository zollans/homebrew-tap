# zollans/homebrew-tap

Homebrew casks for [OnlyEQ](https://github.com/zollans/OnlyEQ), a system-wide parametric EQ for macOS 14.4+.

```sh
brew tap zollans/tap
brew trust --cask zollans/tap/onlyeq
brew install --cask onlyeq
```

Homebrew asks you to trust casks from taps outside its official ones; `brew trust` covers only the OnlyEQ cask.

OnlyEQ updates itself in the app, so you don't need `brew upgrade` for it. OnlyEQ isn't notarized: on first launch, open System Settings > Privacy & Security and click **Open Anyway**.
