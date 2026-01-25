class HiShell < Formula
  desc "An intelligent terminal assistant that translates natural language to shell commands"
  homepage "https://github.com/tufantunc/hi-shell"
  url "https://github.com/tufantunc/hi-shell/releases/download/v0.1.1/hi-shell-aarch64-apple-darwin.tar.gz"
  sha256 "5ffe0fba84de406365f930afc939372e42b709f66de1308b724298850f560f19"
  license "MIT"

  def install
    bin.install "hi-shell"
  end

  test do
    system "#{bin}/hi-shell", "--version"
  end
end
