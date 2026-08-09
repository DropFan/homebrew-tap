class Codelens < Formula
  desc "Code stats, health scores, hotspots, coupling, diffs, and cost estimation"
  homepage "https://github.com/DropFan/codelens"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.7-rust/codelens-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "25af4d2311518148bcda31e57edf2e63ec28824381384c56a59787c55e13137b"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.7-rust/codelens-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "8b450854a25aa2b1a941107e0eba2e3245544a67f126c9da345d0f3c96d632f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.7-rust/codelens-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4841e4a944ea80dcdf925b760ea109ff90f36a26f96255c4e99c321d15ded644"
    end
    on_arm do
      url "https://github.com/DropFan/codelens/releases/download/v0.1.7-rust/codelens-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ad670e4824786ed187983e553c41b7b6601f34c4118dd61c71535a2500966cc"
    end
  end

  def install
    bin.install "codelens"
  end

  test do
    assert_match "codelens", shell_output("#{bin}/codelens --version")
  end
end
