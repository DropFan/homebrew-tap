class Codelens < Formula
  desc "Code stats, health scores, hotspots, coupling, diffs, and cost estimation"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.8-rust/codelens-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "2013dd22d63ec4fc2613d1c9ca9e3a6dca4cd02106ff63ce2dd0368e0a6a6385"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.8-rust/codelens-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "eaaedc36e9205590593e8cd1b882a7c11d02f4213866af0c6bfd96be14a59bc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.8-rust/codelens-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86ca46d4673af523167b1acd45a9e737d67de484b909dee73cc78a322dfd59f1"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.8-rust/codelens-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c94aa97dcbf5b00e99ac460db3e17a18f5369c7c20b88571a01e66f13bc8278"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
