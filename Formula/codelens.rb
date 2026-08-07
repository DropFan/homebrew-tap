class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.4-rust/codelens-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "ae8f0455e32e9891cf218b04e1174a3eec6ee0b5591149f23316a4615c2fbf9c"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.4-rust/codelens-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "fc2902fb56db3c9131d08bd4e0f0d16afbd6bc9f7ca8731724cef403654698ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.4-rust/codelens-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b216d03ff0425f3dc85b28df9a52e928b6d3b79fb0dd86f483c97f37dd3cfb79"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.4-rust/codelens-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e98d34d0e4f2467b24a58ab0f6d6479c3f918a10798fb623b85264c99559234"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
