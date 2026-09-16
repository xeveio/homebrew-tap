cask "gobbl" do
  version "0.1.6"
  sha256 "b7a144c7855db6b1c895d9ceaca22e3f24189174f616798fc7d7e73fbe142ada"

  url "https://dl.xeve.io/gobbl/Gobbl-#{version}.dmg"
  name "Gobbl"
  desc "Notch utility with a pet: file shelf, clipboard, music and more"
  homepage "https://gobbl.xeve.io/"

  livecheck do
    url "https://dl.xeve.io/gobbl/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Gobbl.app"

  uninstall quit: "com.xeve.gobbl"

  zap trash: [
    "~/Library/Application Support/Gobbl",
    "~/Library/Caches/com.xeve.gobbl",
    "~/Library/Preferences/com.xeve.gobbl.plist",
  ]
end
