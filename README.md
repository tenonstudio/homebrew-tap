# Tenon Homebrew Tap

Homebrew casks for macOS apps made by [Tenon Studio](https://tenonstudio.github.io/).

## Install the tap

```bash
brew tap tenonstudio/tap
```

Then install any cask below.

## Available casks

| Cask | App | Status |
| --- | --- | --- |
| `flip` | [Flip](https://tenonstudio.github.io/apps/flip/) | macOS 12+, 14-day trial then a license |
| `magic-mirror` | [Porthole](https://tenonstudio.github.io/apps/porthole/) | Legacy cask name for Porthole 0.0.6; free |

```bash
brew install --cask tenonstudio/tap/flip
brew install --cask tenonstudio/tap/magic-mirror
```

### Flip

```bash
brew install --cask tenonstudio/tap/flip
brew uninstall --cask tenonstudio/tap/flip
```

- **macOS 12.0+** (Monterey).
- **14-day trial**, then a license is required for continued use; there is no subscription.
- Some controls (Low Power, clamshell sleep, high-energy modes) install a **System Helper** and ask for administrator approval once.
- Uninstall the System Helper from Flip's settings before removing the app.
- Current builds are signed with an Apple Development certificate and are not notarized. If Gatekeeper blocks the first launch, right-click the app and choose **Open**.

### Porthole / `magic-mirror`

```bash
brew install --cask tenonstudio/tap/magic-mirror
brew uninstall --cask tenonstudio/tap/magic-mirror
```

- **macOS 26.0+** (Tahoe) on Apple silicon.
- **Free** — every feature, no account, no license key.
- Requires Screen Recording permission. Grant it in **System Settings → Privacy & Security → Screen Recording**, then restart the app.
- The cask still uses the legacy `magic-mirror` name and installs the 0.0.6 build under the previous Magic Mirror name. A `porthole` cask will replace it with the next release.
- Current builds are signed with an Apple Development certificate and are not notarized. If Gatekeeper blocks the first launch, right-click the app and choose **Open**.

## Updating

Both apps use Sparkle for automatic updates. Their casks declare `auto_updates true`, so `brew upgrade` skips them by default. Use the app's built-in updater, or:

```bash
brew upgrade --cask --greedy tenonstudio/tap/flip
brew upgrade --cask --greedy tenonstudio/tap/magic-mirror
```

## Notes

- Casks are maintained in this repository under `Casks/`.
- Report issues in the relevant app repository or email [tenonstudio@163.com](mailto:tenonstudio@163.com).
- 中文说明：[README.zh-CN.md](README.zh-CN.md)

---

Maintained by [Tenon Studio](https://github.com/tenonstudio).
