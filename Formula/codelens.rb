class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.1-rust/codelens-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "d05f43a55fc416a8809feea12ba45ad4c8d2398df2db2d588abb45d858cd28ca"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.1-rust/codelens-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "3e049fcbc6c848d08b804262952e9b01842e1589b989abe53c50de605933217d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.1-rust/codelens-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d75e4bf20758c3d959925caad9910f0f6989a7ceb859df4e3ae2bf08fe71b3f1"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.1-rust/codelens-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bcda6ee025a5040b4c6d00c5e5b337b02493ed3bbee581cfff244bfe1040fe8"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
