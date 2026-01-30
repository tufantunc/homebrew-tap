class HiShell < Formula
  desc "An intelligent terminal assistant that translates natural language to shell commands"
  homepage "https://github.com/tufantunc/hi-shell"
  url "https://github.com/tufantunc/hi-shell/releases/download/v0.2.2/hi-shell-aarch64-apple-darwin.tar.gz"
  sha256 "88d01e21881c18f1087977d3abb13f0e35093867d200efe2d557db579b9cd273"
  license "MIT"

  def install
    bin.install "hi-shell"
  end

  test do
    system "#{bin}/hi-shell", "--version"
  end
end
