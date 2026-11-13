<p align="center">
  <img src="assets/flip.png" width="72" alt="Flip icon">
  &nbsp;&nbsp;
  <img src="assets/porthole.png" width="72" alt="Porthole icon">
  &nbsp;&nbsp;
  <img src="assets/tessera.png" width="72" alt="Tessera icon">
</p>

<h1 align="center">Tenon Homebrew Tap</h1>

Homebrew casks for macOS apps made by [Tenon Studio](https://tenonstudio.github.io/).

## Install the tap

```bash
brew tap tenonstudio/tap
```

## Apps

| App | What it does | Homebrew |
| --- | --- | --- |
| [Flip](https://tenonstudio.github.io/apps/flip/) | Mac system toggles, shortcuts, and custom commands in one menu-bar panel. | `brew install --cask tenonstudio/tap/flip` |
| [Porthole](https://tenonstudio.github.io/apps/porthole/) | Turn any window or screen region into a floating live mirror. | Cask coming with the next release |
| [Tessera](https://github.com/tenonstudio/tessera) | Live p5.js generative wallpapers for the desktop. | In development |

Only **Flip** is installable from this tap right now. Porthole and Tessera will be added under their new names once their Porthole/Tessera-branded builds are packaged and hosted.

## Flip

```bash
brew install --cask tenonstudio/tap/flip
brew uninstall --cask tenonstudio/tap/flip
```

- **macOS 12.0+** (Monterey).
- **14-day trial**, then a license is required for continued use; there is no subscription.
- Some controls (Low Power, clamshell sleep, high-energy modes) install a **System Helper** and ask for administrator approval once.
- Uninstall the System Helper from Flip's settings before removing the app.
- Current builds are signed with an Apple Development certificate and are not notarized. If Gatekeeper blocks the first launch, right-click the app and choose **Open**.

## Porthole

Porthole is the macOS window-mirroring app, renamed from Magic Mirror. The current public build is still hosted on the old download page, but the product and future cask are named **Porthole**.

- **macOS 26.0+** (Tahoe) on Apple silicon.
- **Free** — every feature, no account, no license key.
- Requires Screen Recording permission in **System Settings → Privacy & Security → Screen Recording**.

A `porthole` cask will be added when the Porthole-branded DMG is published.

## Tessera

Tessera is Tenon's live p5.js wallpaper app. It is in private development and has no public Homebrew cask yet. When it ships, it will be added as `tenonstudio/tap/tessera`.

## Updating Flip

Flip uses Sparkle for automatic updates, so its cask declares `auto_updates true`. `brew upgrade` skips it by default. Use the app's updater, or:

```bash
brew upgrade --cask --greedy tenonstudio/tap/flip
```

## Notes

- Casks live under `Casks/`.
- Report issues in the relevant app repository or email [tenonstudio@163.com](mailto:tenonstudio@163.com).
- 中文说明：[README.zh-CN.md](README.zh-CN.md)

---

Maintained by [Tenon Studio](https://github.com/tenonstudio).
