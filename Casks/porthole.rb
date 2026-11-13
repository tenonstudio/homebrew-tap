cask "porthole" do
  version "0.0.6"
  sha256 "92d2aa3b94c13d2c923da17a09c9491733badfc654e7092748818d6dccaa3262"

  url "https://tenonstudio.github.io/apps/porthole/downloads/Porthole-#{version}.dmg"
  name "Porthole"
  desc "Turn any window or screen region into a floating live mirror"
  homepage "https://tenonstudio.github.io/apps/porthole/"

  livecheck do
    url "https://tenonstudio.github.io/apps/porthole/appcast.xml"
    strategy :sparkle
  end

  # The app ships with Sparkle; let the in-app updater own upgrades.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Porthole.app"

  zap trash: [
    "~/Library/Application Support/org.tenonstudio.porthole",
    "~/Library/Caches/org.tenonstudio.porthole",
    "~/Library/Preferences/org.tenonstudio.porthole.plist",
    "~/Library/Saved Application State/org.tenonstudio.porthole.savedState",
  ]

  caveats <<~EOS
    Porthole needs Screen Recording permission in System Settings → Privacy & Security.
    Restart Porthole after granting the permission.
  EOS
end
