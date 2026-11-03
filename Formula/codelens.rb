class Codelens < Formula
  desc "Code stats, health scores, hotspots, coupling, diffs, and cost estimation"
  homepage "https://github.com/DropFan/codelens"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.3.0-rust/codelens-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "6383cfc849f5a49162f6a57aa678b73ce7d9b6bb9ef71396c15323729cdff0bb"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.3.0-rust/codelens-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "40615864e0ff814ef08678050d06c2a5edc5d71637b36ffad38c07709fa25bab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.3.0-rust/codelens-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68abbec7b6e04cc13ebc5e761c5e71d3832a351a51fc39f6b5f6df3b2c8fc54e"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.3.0-rust/codelens-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60062ceec16fe983cbd3c294bd0dc45e557a495c6afb52926cf3b7e679eb3030"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
