cask "flip" do
  version "0.29.20,20261113.95"
  sha256 "e56011d37a36f4a6c2db6c0a279a1130de79560dc0e424841b3a6d1e90e2f0cb"

  url "https://tenonstudio.github.io/apps/flip/downloads/Flip-#{version.csv.first}.dmg"
  name "Flip"
  desc "Menu bar utility for system toggles, shortcuts, and custom commands"
  homepage "https://tenonstudio.github.io/apps/flip/"

  livecheck do
    url "https://tenonstudio.github.io/apps/flip/appcast.xml"
    strategy :sparkle
  end

  # App 自带 Sparkle 自动更新；声明后 brew upgrade 默认跳过，
  # 避免与 App 内更新重复提示。使用 --greedy 可强制由 Homebrew 更新。
  auto_updates true
  depends_on macos: :monterey

  app "Flip.app"

  zap trash: [
    "~/.config/flip",
    "~/Library/Application Support/org.inksky.Flip",
    "~/Library/Caches/org.inksky.Flip",
    "~/Library/Preferences/org.inksky.Flip.plist",
    "~/Library/Saved Application State/org.inksky.Flip.savedState",
  ]

  caveats <<~EOS
    Flip uses Sparkle for automatic updates, so `brew upgrade` skips this cask by default.
    Uninstall System Helper from Flip settings before removing the app.
  EOS
end
