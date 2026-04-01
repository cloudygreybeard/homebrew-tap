class Jumpgate < Formula
  desc "SSH relay access manager — multi-hop tunnels via ControlMaster and reverse forwarding"
  homepage "https://github.com/cloudygreybeard/jumpgate"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_amd64.tar.gz"
      sha256 "17b998481373535aca7e609b6bcbe335093e6ed7d988119b1d94f4efebb6cc5c"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_arm64.tar.gz"
      sha256 "3756544eeba61c1e56bf191f349ee8dcaa2aa25ac915fb7b5395577851e30cd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_amd64.tar.gz"
      sha256 "094ec4491ee4da18c45d641bc0d56ef3cf416e4f75d99d6a640c71a145c43ad2"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_arm64.tar.gz"
      sha256 "fe98a3b9f6a3dfae0ae53e522bfa7884987416a483032d4f5f0518a75ea5f640"
    end
  end

  def install
    bin.install "jumpgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jumpgate version")
  end
end
