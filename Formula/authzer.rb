class Authzer < Formula
  desc "Config-driven web access authz management via CDP"
  homepage "https://github.com/cloudygreybeard/authzer"
  version "0.2.1"
  license "Apache-2.0"

    on_macos do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_amd64.tar.gz"
        sha256 "20f521883e1cab17a4bb3180768675d1c7c6755a08bb094f31eb5cf86a800900"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_arm64.tar.gz"
        sha256 "b2a0e80ea2f6010531ee87f1316743e725efeaf3ce7aa727d14399abe5ef1ac3"
      end
    end
    on_linux do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_amd64.tar.gz"
        sha256 "2514302510fdb2ec7ea6102cb4a1656a790838709c0895e3f1237ccbba5e05a6"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_arm64.tar.gz"
        sha256 "597e960007008c6f5ee1f8df4607ba8ef290d039485c49621dc682d8ef2be126"
      end
    end

  def install
    bin.install "authzer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/authzer version")
  end
end
