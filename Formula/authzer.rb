class Authzer < Formula
  desc "Config-driven web access authz management via CDP"
  homepage "https://github.com/cloudygreybeard/authzer"
  version "0.1.0"
  license "Apache-2.0"

    on_macos do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_amd64.tar.gz"
        sha256 "f60f07ad9e49fabdcd17c33bcb70828023993c218fe5b4c59ffea7b7d5ed8f46"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_arm64.tar.gz"
        sha256 "adc29f1a65a573fa1a2dfdfec143c20592e8efd7f4062ca198f2eb9b90e275c2"
      end
    end
    on_linux do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_amd64.tar.gz"
        sha256 "fa8e2b9118af9a452f6f56dc78251b76b37a53d082dc4e40026c2658fd3a4e23"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_arm64.tar.gz"
        sha256 "56ec64728cd9ccff6f103473b0ba0609c7bd55cf35e65df64cbb16b32cf5b204"
      end
    end

  def install
    bin.install "authzer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/authzer version")
  end
end
