class Inno < Formula
  desc "InnoDB file analysis toolkit for parsing, validating, and inspecting .ibd files"
  homepage "https://github.com/ringo380/idb-utils"
  license "MIT"
  version "4.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "63ab14c615c6bd4b8aa2a669ccbcbedcf837d179223d888a3e1c57c6b9ab67cf"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "86ebb3339867eddf7c1a812c14cd1ae52705a972a10326e281a66eef71557b59"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26d61b11a54705fc650efc51bf9308aef00d135f7dff8604b841c33155587ae9"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05d7f51bc4a83fdc4908fa3b4692210c0da5655963ee0f9d265a0796d8a499c4"
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
