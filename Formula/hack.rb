class Hack < Formula
  desc "CLI tool for managing hack workspaces with pattern-based scaffolding"
  homepage "https://github.com/cloudygreybeard/hack"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_amd64.tar.gz"
      sha256 "90e54c67a17486c8217201542296796c03922c8b1ca3410cb113d9825366402b"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_arm64.tar.gz"
      sha256 "d36e8145424d75fe20b7937b419ddb856288d99bce61516e77d1a4bb272b8ab3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_amd64.tar.gz"
      sha256 "0d2869a0a9ac8a187ee24f7a018e4905774aa3aca98bf28df913cfd95efebb82"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_arm64.tar.gz"
      sha256 "bcc9f9362d8315640c99f28ebda6a7a51d606210f99a032c8729fc4f0ead0808"
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
