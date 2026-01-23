class Codelens < Formula
  desc "High performance code statistics tool written in Rust"
  homepage "https://github.com/DropFan/codelens"
  url "https://github.com/DropFan/codelens/archive/refs/tags/v0.0.1-rust.tar.gz"
  sha256 "ae1c5c58b7b1e157d43924f3bd568296c0a5f53b7df0e977ab318cd08fd606ab"
  license "MIT"
  head "https://github.com/DropFan/codelens.git", branch: "rust"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/codelens")
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end

