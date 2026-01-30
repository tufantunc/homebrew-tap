class HiShell < Formula
  desc "An intelligent terminal assistant that translates natural language to shell commands"
  homepage "https://github.com/tufantunc/hi-shell"
  url "https://github.com/tufantunc/hi-shell/releases/download/v0.2.1/hi-shell-aarch64-apple-darwin.tar.gz"
  sha256 "24af5a28439adcedad79cd58fbdba7a56d1109c0f510998b3d43a0c011de69fc"
  license "MIT"

  def install
    bin.install "hi-shell"
  end

  test do
    system "#{bin}/hi-shell", "--version"
  end
end
