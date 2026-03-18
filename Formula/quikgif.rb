class Quikgif < Formula
  desc "Record polished GIF demos from the command line"
  homepage "https://quikgif.com"
  version "1.4.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :sonoma

  url "https://quikgif-releases.ringo380.workers.dev/download"
  sha256 "3382d6f2ec2551ddb94f55318bd9b5ff8e0795d07835b832d854faf59cd41395"

  def install
    bin.install "quikgif"
  end

  def caveats
    <<~EOS
      QuikGIF CLI has been installed!

      Get started:
        quikgif --help
        quikgif list-windows
        quikgif record --duration 10 -o demo.gif

      The QuikGIF macOS app is available separately:
        https://quikgif.com
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikgif --version")
  end
end
