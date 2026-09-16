cask "gobbl" do
  version "0.1.5"
  sha256 "a1be0f675192d40958f98f7f420f85a786860071c584f21911c66525d704c93b"

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
