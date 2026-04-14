class Authzer < Formula
  desc "Config-driven web access authz management via CDP"
  homepage "https://github.com/cloudygreybeard/authzer"
  version "0.2.0"
  license "Apache-2.0"

    on_macos do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_amd64.tar.gz"
        sha256 "af6849cd0e3aa34b4f90d67c3882d8354d85d80fa3c44cef6bace6e7fb9e7006"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_arm64.tar.gz"
        sha256 "71b497bc92bca38014ffa37a31cf9dc1fc5b3a335d0dc39953487ecbd1f9210c"
      end
    end
    on_linux do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_amd64.tar.gz"
        sha256 "57a30cab02ed3ddd15d1daa5b274828e6eaf23078fcb91c7f7b0dd36ae84fbd6"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_arm64.tar.gz"
        sha256 "a8c333a450089fe7e33de1215b3d68f02e9ee52d5c4c243e6f3604a70b18f4a5"
      end
    end

  def install
    bin.install "authzer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/authzer version")
  end
end
