class Slack2md < Formula
  desc "Export Slack channels and threads to Markdown"
  homepage "https://github.com/cloudygreybeard/slack2md"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_darwin_amd64.tar.gz"
      sha256 "6509d818d05432cc0b020a10043d20fab1d0fbe030ffac7ee8032c12c94dfcae"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_darwin_arm64.tar.gz"
      sha256 "40ccce0e1dcb3201b34dc01deea537e49b6db8483e68ed3b917298337f93e4c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_linux_amd64.tar.gz"
      sha256 "659c831d8cce1a9c8a72389d9afe7c4863107527e49c6ef6bf841b1ce07df2ea"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/slack2md/releases/download/v#{version}/slack2md_#{version}_linux_arm64.tar.gz"
      sha256 "d5d6a42be8d1f39392286ddd1d7f2a405b854f91fa30575c3c5b700fb113f920"
    end
  end

  def install
    bin.install "slack2md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack2md version")
  end
end
