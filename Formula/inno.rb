class Inno < Formula
  desc "InnoDB file analysis toolkit for parsing, validating, and inspecting .ibd files"
  homepage "https://github.com/ringo380/idb-utils"
  license "MIT"
  version "2.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b52a3d33e9d78d0ec88aba9f1501f1ecb33f19e608e2417c69bca423ad9e0755"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e60f0fc67c410081fb8ea270a6fe1290428924fb2438a45539f28635744a9538"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74529fc7109b069b78b6809b587d2a4f7ec5c3db798940358f7b33295491ac35"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94c384936e30d71a4dc048885610d647b56dc914bf3010e4154989a316294345"
    end
  end

  def install
    bin.install "inno"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inno --version")
    assert_match "Usage:", shell_output("#{bin}/inno --help")
  end
end
