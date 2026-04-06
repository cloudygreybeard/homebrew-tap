class Slackback < Formula
  desc "Your Slack conversations, locally"
  homepage "https://github.com/cloudygreybeard/slackback"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_darwin_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_linux_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_linux_arm64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "slackback"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackback version")
  end
end
