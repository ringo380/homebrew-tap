class Inno < Formula
  desc "InnoDB file analysis toolkit for parsing, validating, and inspecting .ibd files"
  homepage "https://github.com/ringo380/idb-utils"
  license "MIT"
  version "1.2.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "07103becbe147c42c2a007bc3cff6c5de6e76336c426addc339d1224fb5ecbab"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b11604a101a662ff4915a429d0debee26fe4fd0c97316f787b72191e36c2a574"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "994afbcea087c70b6ef889e859fb003c85d072b393d5ba5256aaeb72e5640391"
    else
      url "https://github.com/ringo380/idb-utils/releases/download/v#{version}/inno-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f56bf54e93794aaaae4cd50483b3aa4e995260e7c5bbf754c0fbb43abeadbc89"
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
