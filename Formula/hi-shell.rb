class HiShell < Formula
  desc "An intelligent terminal assistant that translates natural language to shell commands"
  homepage "https://github.com/tufantunc/hi-shell"
  url "https://github.com/tufantunc/hi-shell/releases/download/v0.2.0/hi-shell-aarch64-apple-darwin.tar.gz"
  sha256 "0dbcefa3ca6612e080bb1df8ba2b7ea8d40e91043bf4ebabccdb53238bb272c7"
  license "MIT"

  def install
    bin.install "hi-shell"
  end

  test do
    system "#{bin}/hi-shell", "--version"
  end
end
