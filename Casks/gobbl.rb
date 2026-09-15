cask "gobbl" do
  version "0.1.2"
  sha256 "64a6e9eaf635374b873c771bcc3feaa68e1bb2133794ee2ca4b310188e7bc99b"

  url "https://dl.xeve.io/gobbl/Gobbl-#{version}.dmg"
  name "Gobbl"
  desc "Notch utility with a pet: file shelf, clipboard, music and more"
  homepage "https://gobbl.xeve.io"

  livecheck do
    url "https://dl.xeve.io/gobbl/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Gobbl.app"

  uninstall quit: "com.xeve.gobbl"

  zap trash: [
    "~/Library/Application Support/Gobbl",
    "~/Library/Preferences/com.xeve.gobbl.plist",
    "~/Library/Caches/com.xeve.gobbl",
  ]
end
