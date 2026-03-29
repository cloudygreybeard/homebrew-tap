class Slackback < Formula
  desc "Your Slack conversations, locally"
  homepage "https://github.com/cloudygreybeard/slackback"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_darwin_amd64.tar.gz"
      sha256 "0deeda85c0b9868ba3ff83728181b8c3e016474f6fef9a3fbc86131b79cc6277"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_darwin_arm64.tar.gz"
      sha256 "6edf078daca9618138b3b2e527e3ce4550fcacc32834dc941bd5df5151f6fbc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_linux_amd64.tar.gz"
      sha256 "3c00ee74147e5beca1f6bc1b101ac54ff30702683fec3c0b3d8a37dc69065630"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_linux_arm64.tar.gz"
      sha256 "e3f88d48b62d4fa4af2203d9e2450263a4007501362cb2d712398c572adaeac0"
    end
  end

  def install
    bin.install "slackback"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackback version")
  end
end
