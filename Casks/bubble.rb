cask "bubble" do
  version "0.3.0"
  sha256 "2c1f1571bf65d58d2425e0bf80b5b56797eb50c859dafa91faeec8fc9774968e"

  url "https://tenonstudio.github.io/apps/bubble/downloads/Bubble-#{version}.dmg"
  name "Bubble"
  desc "PopClip-style selection action bar with native extensions"
  homepage "https://tenonstudio.github.io/apps/bubble/"

  livecheck do
    url "https://tenonstudio.github.io/apps/bubble/appcast.xml"
    strategy :sparkle
  end

  # Bubble ships with Sparkle; let the in-app updater own upgrades.
  auto_updates true
  depends_on macos: :sonoma

  app "Bubble.app"

  zap trash: [
    "~/Library/Application Support/Bubble",
    "~/Library/Caches/org.tenonstudio.Bubble",
    "~/Library/Preferences/org.tenonstudio.Bubble.plist",
    "~/Library/Saved Application State/org.tenonstudio.Bubble.savedState",
  ]

  caveats <<~EOS
    Bubble is a menu-bar accessory and needs Accessibility permission for
    selected text. Enable it in System Settings → Privacy & Security.

    Bubble uses Sparkle for automatic updates, so `brew upgrade` skips this
    cask by default. Use the in-app updater, or `brew upgrade --cask --greedy`.

    This build is signed with an Apple Development certificate and is not
    notarized. If Gatekeeper blocks the first launch, right-click
    Bubble.app and choose Open.

    On Homebrew 7+, trust the tap before installing:
      brew trust tenonstudio/tap
  EOS
end
