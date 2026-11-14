cask "launchpad" do
  version "0.2.5"
  sha256 "3ddf9b799ee370ed544eb6c694d70cd14fba25b8bc9f1fcea8bee53fd54fe0d9"

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
