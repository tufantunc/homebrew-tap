class HiShell < Formula
  desc "An intelligent terminal assistant that translates natural language to shell commands"
  homepage "https://github.com/tufantunc/hi-shell"
  url "https://github.com/tufantunc/hi-shell/releases/download/v0.1.2/hi-shell-aarch64-apple-darwin.tar.gz"
  sha256 "a22c4b4d42e58144425e6f27ee7638084ea796100dff031c121599aaf08292cb"
  license "MIT"

  def install
    bin.install "hi-shell"
  end

  test do
    system "#{bin}/hi-shell", "--version"
  end
end
