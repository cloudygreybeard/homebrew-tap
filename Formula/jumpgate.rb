class Jumpgate < Formula
  desc "SSH relay access manager — multi-hop tunnels via ControlMaster and reverse forwarding"
  homepage "https://github.com/cloudygreybeard/jumpgate"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_amd64.tar.gz"
      sha256 "0f3343bc1d5541ba728c0ecd56ed1ddba414c41b09315d2c9ef48a2ff3d4b873"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_arm64.tar.gz"
      sha256 "e7cbdae57d1bf9728306e741ba881e5ff8fcd7ebb06f9c261fdff8c7a08acc04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_amd64.tar.gz"
      sha256 "ad92a1fc60a80cfa6f32c1cd8fd815b4348ba5015c9ba3cc6f36f38a4360e89b"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_arm64.tar.gz"
      sha256 "5b9fc0ff2dde061311c66702ceee58dabf37f5fb7c820083105d427d4ba1dc21"
    end
  end

  def install
    bin.install "jumpgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jumpgate version")
  end
end
