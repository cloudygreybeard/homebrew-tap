class Slack2md < Formula
  desc "Export Slack channels and threads to Markdown"
  homepage "https://github.com/cloudygreybeard/slack2md"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_darwin_amd64.tar.gz"
      sha256 "7087a03ae8ab70ba177c3490dc6fc78089eda4bc975f33c6ec42f2fa0eab097e"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_darwin_arm64.tar.gz"
      sha256 "8b27fa1ec34106eee5485405d065f017c20bc2d98756063d629257e44225a98e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_linux_amd64.tar.gz"
      sha256 "eebcc237e2219770d5d3b0bbf154ddd428cd7bcb842c561540a5fffa3153855c"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_linux_arm64.tar.gz"
      sha256 "692c495febce6322064fa8145236a8362f53f1f0f46523bdb1a0ffb3219b29cb"
    end
  end

  def install
    bin.install "slack2md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack2md version")
  end
end
