class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.3-rust/codelens-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "19193a385427f283681e868cf6f451a53be17f96d7a99394cfa35969a47292fa"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.3-rust/codelens-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "7365b03d9fea1c5fc4a07c74a890ad5ff015d1bfae3c998a13ade0761366cc6f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.3-rust/codelens-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c29c76c519cfa1005d22031219e8d53603c51ad24429c34e9407b8729c5a176e"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.3-rust/codelens-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "446090ecb6ea223650704bbc494ff86c8cd22b7aa5d1ecfa1829ef34af143502"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
