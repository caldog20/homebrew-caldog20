class Aarch64UnknownLinuxGnu < Formula
  desc "aarch64 Linux GNU Toolchain"
  homepage "https://github.com/caldog20/homebrew-caldog20"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }
  version "8.3.0"

  url "https://github.com/caldog20/homebrew-caldog20/releases/download/v1.0.0/aarch64-unknown-linux-gnu.tar.gz"
  sha256 "141be9cd9cf1796463bf2102f0898db374b1b7339deefe870ed4d1edc7919d92"

  def install
    (prefix/"toolchain").install Dir["./*"]
    Dir.glob(prefix/"toolchain/bin/*") {|file| bin.install_symlink file}
  end
end
