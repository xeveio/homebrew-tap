cask "gobbl" do
  version "0.1.3"
  sha256 "727d57798217254a789311160558ef16377021a14428821b451364734bbc3667"

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
