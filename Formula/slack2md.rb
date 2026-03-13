class Slack2md < Formula
  desc "Export Slack channels and threads to Markdown"
  homepage "https://github.com/cloudygreybeard/slack2md"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_darwin_amd64.tar.gz"
      sha256 "c3424aa245faecb8595bda4aade6c20a034387d673123b84165c37e0c0385d60"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_darwin_arm64.tar.gz"
      sha256 "dcf06ef41b8384d19540e957507ddbac7419a6a9820caac92023131cffcad1c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_linux_amd64.tar.gz"
      sha256 "b2480b936b0d7d8900df8ddec8d8ff3239ad7655db8a30b87f72fb80dfd8e69e"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_linux_arm64.tar.gz"
      sha256 "10ea4d1807e9a365a9def3e96e7f7a2b6777c8c0cdf18d300210fb6b83779631"
    end
  end

  def install
    bin.install "slack2md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack2md version")
  end
end
