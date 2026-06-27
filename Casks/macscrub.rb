cask "macscrub" do
  version "1.5.0"
  sha256 "64fea2460320bbb0657112d5181dc313fdf4b5d195c9e6b1c304516dae915340"

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
