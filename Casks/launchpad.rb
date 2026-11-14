cask "launchpad" do
  version "0.1.0"
  sha256 "9f372d93dc1893fa5985cfeeadf75b79089a7b8c1892bd64642da78c55f008e9"

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
    This build is ad-hoc signed and not notarized. If Gatekeeper blocks the first
    launch, right-click Launchpad.app and choose Open.
  EOS
end
