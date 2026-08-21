# Generated from packaging/macscrub.rb in tufantunc/MacScrub — edit there, not here.
# The version and sha256 values are substituted at release time by the
# "Update Homebrew tap" step in .github/workflows/release.yml.
cask "macscrub" do
  version "1.5.0"
  sha256 "64fea2460320bbb0657112d5181dc313fdf4b5d195c9e6b1c304516dae915340"

  url "https://github.com/tufantunc/MacScrub/releases/download/v#{version}/MacScrub-v#{version}.dmg"
  name "MacScrub"
  # No "Mac"/"macOS" here — `brew style`'s Cask/Desc cop rejects naming the platform.
  desc "Temporary input lock for safely cleaning your keyboard and trackpad"
  homepage "https://github.com/tufantunc/MacScrub"

  # A bare symbol is the MINIMUM macOS release, not an exact match: Cask::DSL::DependsOn
  # parses `macos:` with an implicit `>=` comparator. The `">= :sonoma"` string form means
  # the same thing but is deprecated — `brew style` tells you to write it exactly like this.
  depends_on macos: :sonoma

  app "MacScrub.app"

  zap trash: [
    "~/Library/Caches/com.macscrub.app",
    "~/Library/Preferences/com.macscrub.app.plist",
    "~/Library/Saved Application State/com.macscrub.app.savedState",
  ]
end
