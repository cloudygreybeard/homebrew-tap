class Jumpgate < Formula
  desc "SSH relay access manager — multi-hop tunnels via ControlMaster and reverse forwarding"
  homepage "https://github.com/cloudygreybeard/jumpgate"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_amd64.tar.gz"
      sha256 "71abfed20a49e6a5677a15079d342a07a4d967fa732bb4fc40a66d624e5b4c67"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_arm64.tar.gz"
      sha256 "22a93ba4ecaef25d5e6a8922cb5ab0a2ea47f69c0c8f627f4cf78f1bf75888cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_amd64.tar.gz"
      sha256 "d6390e7e9ca55f2da27234e0d30a2265a59e864d75d49097f1380ce5922a3a57"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_arm64.tar.gz"
      sha256 "d1de98074079b3a83c8b16700e45424b8cd4f243d7694b4394977ef9d386c61b"
    end
  end

  def install
    bin.install "jumpgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jumpgate version")
  end
end
