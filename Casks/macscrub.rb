# Generated from packaging/macscrub.rb in tufantunc/MacScrub — edit there, not here.
# The version and sha256 values are substituted at release time by the
# "Update Homebrew tap" step in .github/workflows/release.yml.
cask "macscrub" do
  version "1.5.0"
  sha256 "64fea2460320bbb0657112d5181dc313fdf4b5d195c9e6b1c304516dae915340"

  url "https://github.com/tufantunc/MacScrub/releases/download/v#{version}/MacScrub-v#{version}.dmg"
  name "MacScrub"
  desc "Temporary input lock for safely cleaning your Mac keyboard and trackpad"
  homepage "https://github.com/tufantunc/MacScrub"

  # `>= :sonoma`, not a bare `:sonoma` — a bare symbol is an EXACT macOS match, so it
  # refuses to install on Sequoia and later. The app's deployment target is macOS 14.
  depends_on macos: ">= :sonoma"

  app "MacScrub.app"

  zap trash: [
    "~/Library/Caches/com.macscrub.app",
    "~/Library/Preferences/com.macscrub.app.plist",
    "~/Library/Saved Application State/com.macscrub.app.savedState",
  ]
end
