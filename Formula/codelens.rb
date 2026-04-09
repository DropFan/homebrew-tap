class Codelens < Formula
  desc "High performance code statistics tool written in Rust"
  homepage "https://github.com/DropFan/codelens"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.3-rust/codelens-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "9da3a3f34a2a9cd3563eeed35886c1d1ca42321041715eb714569960f26f1c8b"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.3-rust/codelens-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "8d4ed53fc4ae3d40708961acc836171b5b75d786200dc38335819171f5387932"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.3-rust/codelens-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "785b3f76a8e355070759feac99dc0dcc86a11fef1250dde4e12b572a92d2c3b9"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.3-rust/codelens-0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3dd391c93bf48159dabb79876e099d126af280ec46a76aaaffb9c4d92c1846a5"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
