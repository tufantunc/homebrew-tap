cask "macscrub" do
  version "1.4.0"
  sha256 "c688e8bdb9f69246a9e7f9d12447147daca4ff9caae8e21c5a7ecefcaf53a7b4"

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
