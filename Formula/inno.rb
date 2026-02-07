class Inno < Formula
  desc "InnoDB file analysis toolkit for parsing, validating, and inspecting .ibd files"
  homepage "https://github.com/ringo380/idb-utils"
  license "MIT"
  version "1.2.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c6452c6b449593a83d18b2ee35945392eda7f1541a6f80936764bf6b8360518e"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2d185a622a39a4c682ec88ebecf61bc0ae3800fb1da108c3a98b30e83a92dad4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96bb14d2c5da072ff60cba9db96ce3ac2926f6552444c8c923d1b0f53388535d"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d10a5e92f25496fc6f51f0db1579a16be3518098617c94415bff62dbc57e60b"
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
