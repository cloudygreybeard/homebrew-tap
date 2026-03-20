class Slackback < Formula
  desc "Your Slack conversations, locally"
  homepage "https://github.com/cloudygreybeard/slackback"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_darwin_amd64.tar.gz"
      sha256 "0289ac313b596aea7661eb760049bc6384bcd83b3c78cfc8d6d2821e0abbe222"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_darwin_arm64.tar.gz"
      sha256 "8aed0ce0bc5634edd4492f8a142691a7abedef80fb407886d1f35f6da0280cdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_linux_amd64.tar.gz"
      sha256 "01f7a4f810d50c4dd4c588cd4e1f82ae8ebc5b2701ecd4e1723ff8597b22489e"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slackback/releases/download/v#{version}/slackback_#{version}_linux_arm64.tar.gz"
      sha256 "7b25061b472a49e75df57dfe63d0b9cb36535e9ae2d97bd9a834dd355a90e64f"
    end
  end

  def install
    bin.install "slackback"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackback version")
  end
end
