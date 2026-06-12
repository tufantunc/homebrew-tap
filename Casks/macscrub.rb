cask "macscrub" do
  version "1.4.1"
  sha256 "0777fe51c9a1f86e7b2d199ee9c359e73d3a297a2fad376ec51350034efacb38"

  url "https://github.com/tufantunc/MacScrub/releases/download/v#{version}/MacScrub-v#{version}.dmg"
  name "MacScrub"
  desc "Temporary input lock for safely cleaning your keyboard and trackpad"
  homepage "https://github.com/tufantunc/MacScrub"

  depends_on macos: :sonoma

  app "MacScrub.app"

  zap trash: [
    "~/Library/Caches/com.macscrub.app",
    "~/Library/Preferences/com.macscrub.app.plist",
    "~/Library/Saved Application State/com.macscrub.app.savedState",
  ]
end
