class Hack < Formula
  desc "CLI tool for managing hack workspaces with pattern-based scaffolding"
  homepage "https://github.com/cloudygreybeard/hack"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_amd64.tar.gz"
      sha256 "67152f7200c5168d0b80606c935f83f761fdf47799c8ed3a4956499ec1f1a0b9"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_arm64.tar.gz"
      sha256 "1baf0aa05f3cf2d76ad094101fad575d5fe5ab672142474730bbda0d8928e4a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_amd64.tar.gz"
      sha256 "a1306e11256f4ca1ca04ec2e7aa646ca2d7bfbd36306d8248d986378cf4cd5d3"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_arm64.tar.gz"
      sha256 "95336593623196c724a90bffa1d9854786af6b91a45989446a85be648ffbcb14"
    end
  end

  def install
    bin.install "hack"
  end

  def caveats
    <<~EOS
      To enable shell integration, run:
        hack bootstrap --install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hack version")
  end
end
