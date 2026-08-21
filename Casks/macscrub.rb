# Generated from packaging/macscrub.rb in tufantunc/MacScrub — edit there, not here.
# The version and sha256 values are substituted at release time by the
# "Update Homebrew tap" step in .github/workflows/release.yml. That substitution is
# whole-file, comments included, so don't spell the placeholder token names anywhere
# in here — including in a comment — or they get rewritten too.
#
# Lint a rendered copy before tagging: brew style on the output must be clean.
cask "macscrub" do
  version "1.6.0"
  sha256 "c8371244f8f402b098f9b90430edbe7a37afd0538e3bb5ba6cfd652749059c73"

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
