class Quikgif < Formula
  desc "Record polished GIF demos from the command line"
  homepage "https://quikgif.com"
  version "1.4.0"
  license "MIT"

  # QuikGIF is no longer distributed via Homebrew.
  # Future releases and auto-updates will only be available through the curl installer.
  # See: https://quikgif.com
  deprecate! date: "2026-04-16", because: "moved to a direct curl installer — see https://quikgif.com/install.sh"

  depends_on :macos
  depends_on macos: :sonoma

  url "https://quikgif-releases.ringo380.workers.dev/download"
  sha256 "3382d6f2ec2551ddb94f55318bd9b5ff8e0795d07835b832d854faf59cd41395"

  def install
    bin.install "quikgif"
  end

  def caveats
    <<~EOS
      ⚠️  QuikGIF is no longer distributed via Homebrew.

      This formula is pinned to v1.4.0 and will not receive future updates.
      Please switch to the official installer for the latest version and
      built-in auto-update support:

        curl -fsSL https://quikgif.com/install.sh | sh

      To remove the Homebrew copy after switching:
        brew uninstall quikgif
        brew untap ringo380/tap

      Learn more: https://quikgif.com

      --

      Get started (v1.4.0):
        quikgif --help
        quikgif list-windows
        quikgif record --duration 10 -o demo.gif
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikgif --version")
  end
end
