cask "launchpad" do
  version "0.3.10"
  sha256 "4eb74ba0de8c8e5f6be69d09ab23c403184d2fab3b7a45244f511f9a50ff9b96"

  url "https://tenonstudio.github.io/apps/launchpad/downloads/Launchpad-#{version}.dmg"
  name "Launchpad"
  desc "Native application launcher"
  homepage "https://tenonstudio.github.io/apps/launchpad/"

  livecheck do
    url "https://tenonstudio.github.io/apps/launchpad/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Launchpad.app"

  zap trash: [
    "~/Library/Application Support/Launchpad",
    "~/Library/Caches/org.tenonstudio.Launchpad",
    "~/Library/Preferences/org.tenonstudio.Launchpad.plist",
    "~/Library/Saved Application State/org.tenonstudio.Launchpad.savedState",
  ]

  caveats <<~EOS
    Launchpad requires macOS 26 or later.
    On Homebrew 7+, trust the tap before installing:
      brew trust tenonstudio/tap
    This build is ad-hoc signed and not notarized. If Gatekeeper blocks the first
    launch, right-click Launchpad.app and choose Open.
  EOS
end
