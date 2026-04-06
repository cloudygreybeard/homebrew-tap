class Jumpgate < Formula
  desc "SSH relay access manager — multi-hop tunnels via ControlMaster and reverse forwarding"
  homepage "https://github.com/cloudygreybeard/jumpgate"
  version "0.7.1"
  license "Apache-2.0"

    on_macos do
      on_intel do
        url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_amd64.tar.gz"
        sha256 "a97ffc46c5828ddcbc9ad0eee4eaa476279a4022d68bd2e2a3fb3edfe0b1c64e"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_darwin_arm64.tar.gz"
        sha256 "a93b7d919ad82161590991ca3ebe584c15a848364d81dbf6426de35aee39628f"
      end
    end
    on_linux do
      on_intel do
        url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_amd64.tar.gz"
        sha256 "0b72dbe312e1ec9a689ec9dd54e4b041cf2133f0506f5c488c4303b24a2d3ca3"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/jumpgate/releases/download/v#{version}/jumpgate_#{version}_linux_arm64.tar.gz"
        sha256 "00ea468243350c7f5b67d0ec375a1e5dd0e6fc8b572e2dfca0e5a468a4cfff38"
      end
    end

  def install
    bin.install "jumpgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jumpgate version")
  end
end
