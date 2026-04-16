class Authzer < Formula
  desc "Config-driven web access authz management via CDP"
  homepage "https://github.com/cloudygreybeard/authzer"
  version "0.4.1"
  license "Apache-2.0"

    on_macos do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_amd64.tar.gz"
        sha256 "20238168b6cb8d16cb7ed6d5c2d423f72eb0903c5bab1b3fe2cd4b3bc999a602"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_arm64.tar.gz"
        sha256 "81f6c3628482fc54aa812913423e0e398f381a52e7d7947f95a99f84e1b0737c"
      end
    end
    on_linux do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_amd64.tar.gz"
        sha256 "3dbe60735fab502a5885c8ede872cf847b2a8c38baf2466b46e3af0c93974b39"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_arm64.tar.gz"
        sha256 "3e3fa92379023e634f24705b4210c772341003111d68a742e943b47066be2d80"
      end
    end

  def install
    bin.install "authzer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/authzer version")
  end
end
