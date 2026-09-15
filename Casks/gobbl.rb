cask "gobbl" do
  version "0.1.4"
  sha256 "3e180b2dfa902e5ded2f96bd74c572a78b9d7f082540f78b850d7d46250c82df"

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
