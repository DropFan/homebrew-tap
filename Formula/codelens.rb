class Codelens < Formula
  desc "High performance code statistics tool written in Rust"
  homepage "https://github.com/DropFan/codelens"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.2-rust/codelens-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "3853caba38b2284133b8051ade253867caa1d150db5eca599d04bc7d9bf05230"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.2-rust/codelens-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "7b7b4c0d33bbe4b7ea3c4f0bbbab2ac0d55f8db8b095921298498fac9b1e10eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.2-rust/codelens-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3b1a469917b7260cc9e250ea677e2e0c482ed4fe98a7da6303d61d004f99146"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.0.2-rust/codelens-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85e29050e0f9e46ebde739b3a62020298bb256b50215171c8887286584510b28"
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
