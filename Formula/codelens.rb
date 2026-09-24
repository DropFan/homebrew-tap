class Codelens < Formula
  desc "Code stats, health scores, hotspots, coupling, diffs, and cost estimation"
  homepage "https://github.com/DropFan/codelens"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.2.0-rust/codelens-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "78f9b743bea31be6002bd7b11d8b821a108a418efe6bb5928865cb37f18dfe81"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.2.0-rust/codelens-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8d1c1fb5279f98382a2dfd344e6cad07f437421f4a903d56b8dbbfef728b167"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.2.0-rust/codelens-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24caf193cb5141862595298fc2afa4d26e14641ef92023a26aeb283145d386a1"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.2.0-rust/codelens-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01f64cc9a26d18155d63ed0fb9acbd13d12b4e7b062916291abc9d4cc1e90c25"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
