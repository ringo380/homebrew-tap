class Quikgif < Formula
  desc "Record polished GIF demos from the command line"
  homepage "https://quikgif.com"
  version "1.3.1"
  license "MIT"

  depends_on :macos
  depends_on macos: :sonoma

  url "https://quikgif-releases.ringo380.workers.dev/download"
  sha256 "e33f32cfbc4e174af42079bcaec57f8b45da0cc864437875dc5639faff0830c8"

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
