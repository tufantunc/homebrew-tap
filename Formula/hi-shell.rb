class HiShell < Formula
  desc "An intelligent terminal assistant that translates natural language to shell commands"
  homepage "https://github.com/tufantunc/hi-shell"
  url "https://github.com/tufantunc/hi-shell/releases/download/v0.1.0/hi-shell-aarch64-apple-darwin.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  def install
    bin.install "hi-shell"
  end

  test do
    system "#{bin}/hi-shell", "--version"
  end
end
