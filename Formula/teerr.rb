class Teerr < Formula
  desc "Copy stdin to stdout and stderr"
  homepage "https://github.com/cloudygreybeard/teerr"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_darwin_amd64.tar.gz"
      sha256 "13dee722b22026e3c08a9c50a5233c3695f822a67745af610df26050e5300b8b"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_darwin_arm64.tar.gz"
      sha256 "bd846c92798b302bf2680c6ef08a608e2a46891d1136758d24e831adcbb8a0df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_linux_amd64.tar.gz"
      sha256 "3b23a2e981bb52d338f3c233eb75ddea9db295713b0bb6830dd7960f3a3babe3"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_linux_arm64.tar.gz"
      sha256 "0e038210d4600effa33089d6f21ce0db1e73623d284ee4656e0f61059dd3e26f"
    end
  end

  def install
    bin.install "teerr"
  end

  test do
    output = pipe_output("#{bin}/teerr", "hello")
    assert_equal "hello", output.strip
  end
end
