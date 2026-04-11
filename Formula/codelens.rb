class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.2-rust/codelens-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "76c29158d69a394594c1b083abbb1a15decee20b7091fea4f8145fd8e0247f52"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.2-rust/codelens-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ca677d89d13771c5b1195b0e9402f3091fffc0b40cb0e268e56d67d36b6d70ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.2-rust/codelens-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d72be94e5c30d3144dd4a8536af488b981c4c57fa172848998f0de7a06c03cd"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.2-rust/codelens-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e51520e0db954734c90a2121da59da983fd62ae87b04bcebea85a6a96ae09da8"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
