class Codelens < Formula
  desc "High performance code analysis tool — stats, health scores, hotspots, and trends"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.0-rust/codelens-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "08d572be58f827978541cb7dbb514693c658eeca563c904c39d36340403d9680"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.0-rust/codelens-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "539c993a1fa81a69f23bf55a09d994b2dbad47ac55e58316f07badddaf374cfa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.0-rust/codelens-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09fe202487cb597da9fac143df795130c23ed2a5d74dff4cb2f544c1496429ca"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.0-rust/codelens-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "913fed274d526b02905344c6172e929841ac8f02f34907b8783c3f08ca85361d"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
