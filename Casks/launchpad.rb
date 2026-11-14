cask "launchpad" do
  version "0.1.7"
  sha256 "4a2da3d255f3bb5ec5d019ac25b17f9653f0fb4d017c911abc5829b7c4d4f44b"

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
