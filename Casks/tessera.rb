cask "tessera" do
  version "0.1.0"
  sha256 "bcf9bdf82f3a012163027e8dbeb2ca9c6068ac6c6ff24a6dbca4058459069783"

  url "https://tenonstudio.github.io/apps/tessera/downloads/Tessera-#{version}.dmg"
  name "Tessera"
  desc "Live p5.js generative desktop wallpapers"
  homepage "https://tenonstudio.github.io/apps/tessera/"

  livecheck do
    url "https://tenonstudio.github.io/apps/tessera/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tessera.app"

  zap trash: [
    "~/Library/Application Support/org.tenonstudio.tessera",
    "~/Library/Caches/org.tenonstudio.tessera",
    "~/Library/Preferences/org.tenonstudio.tessera.plist",
    "~/Library/Saved Application State/org.tenonstudio.tessera.savedState",
  ]

  caveats <<~EOS
    Tessera runs as a menu-bar wallpaper agent. Use “Quit Tessera” in its menu to stop it.
    The bundled wall CLI is available at Tessera.app/Contents/MacOS/wall.
  EOS
end
