class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.5-rust/codelens-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "e3c537991e65043524050ec133f88ef6b6acad1ceb957ac7c34b1a250be2f011"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.5-rust/codelens-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "dcdcc243111bcebc3d95b3d16187180993ab5d788218ba805ff27a02f8b06fc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.5-rust/codelens-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24614430f1d4f36c91ae49ad5df684710de2090a0959484564c3b1174085eea6"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.5-rust/codelens-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95d966e471976de5bb03c927fcc7b8bc48a56f0f88edaa113251a375c7a79c79"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
