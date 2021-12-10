class Aarch64UnknownLinuxGnu < Formula
  desc "aarch64 Linux GNU Toolchain"
  homepage "https://github.com/caldog20/homebrew-formula"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }
  version "8.3.0"

  url "https://github.com/caldog20/homebrew-forumla/releases/download/v1.0.0/aarch64-unknown-linux-gnu.tar.gz"
  sha256 "bb24b4deaae63a61deb1d3eac02f24f4e226f507ee25e4cdefa467d7db6c10ec"

  def install
    (prefix/"toolchain").install Dir["./*"]
    Dir.glob(prefix/"toolchain/bin/*") {|file| bin.install_symlink file}
  end
end