class Jumpgate < Formula
  desc "SSH relay access manager — multi-hop tunnels via ControlMaster and reverse forwarding"
  homepage "https://github.com/cloudygreybeard/jumpgate"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_amd64.tar.gz"
      sha256 "e3a91415bb393d149913ec5bf9ccb0fed0c6ba6efb1fa23bc6754373d01949ea"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_arm64.tar.gz"
      sha256 "350126bfa256c712ef5422f82422b939ba3b132a9c61d5f522d903ae24107644"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_amd64.tar.gz"
      sha256 "79c1196816781e41e29c8c798062ed2fd1b7f9d1592df29d0bfc035a3190ff82"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_arm64.tar.gz"
      sha256 "d8e09a215e26dfb10e7b7b3d3d7b47eefd3afe6e4772a1108850a1f7a8341510"
    end
  end

  def install
    bin.install "jumpgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jumpgate version")
  end
end
