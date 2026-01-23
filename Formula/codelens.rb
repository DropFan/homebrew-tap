class Codelens < Formula
  desc "High performance code statistics tool written in Rust"
  homepage "https://github.com/DropFan/codelens"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.1-rust/codelens-0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "6cff95327891a877df1cd4d9d6fc62fb81bb53627a5fb621a1814361b0a85092"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.1-rust/codelens-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "c4d888f4bfa2434e5b4362faa466caf706f6e0e890ab5611655161d5009b1516"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.1-rust/codelens-0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78926e7b687ec7e01240de8d13914efc669547efab3c4c88afed089d2dbabbf3"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.1-rust/codelens-0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c086f714216f6af89671d4aea9725b4cc3d7c081764e1e58aaba731aeef9806"
    end
  end

  # Build from source with --HEAD
  head "https://github.com/DropFan/codelens.git", branch: "rust"

  depends_on "rust" => :build if build.head?

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args(path: "crates/codelens")
    else
      bin.install "codelens"
    end
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end

