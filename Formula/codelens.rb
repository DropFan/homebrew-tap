class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.6-rust/codelens-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "8da67e8b5db24aac3d82365e3b64dc40581e6151c61ea0a82dedfb865732a506"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.6-rust/codelens-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "cbf665c44d4ecae091e2dfa0c06a02d1fb29848fac593ee75595743d9118d58a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.6-rust/codelens-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d420c2e51a9254a96b3d9f6dca8136061ff44e0986900fae58757736732d56a"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.6-rust/codelens-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e80676f0828c42ef9345f354a00c2d7d62278f4793e572c403ec70a92560625d"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
