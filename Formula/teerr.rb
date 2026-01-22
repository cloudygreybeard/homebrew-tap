class Teerr < Formula
  desc "Copy stdin to stdout and stderr"
  homepage "https://github.com/cloudygreybeard/teerr"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_darwin_amd64.tar.gz"
      sha256 "c34457b71a5cb6d9080a574e92bcf14a28baa44f8b382c928b7f7ae558cb5a18"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_darwin_arm64.tar.gz"
      sha256 "e118f4ad9debae964ffe41f9a92b6fef5e6db6ca5629dae768b3416b54f2649a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_linux_amd64.tar.gz"
      sha256 "709b2bf37c31c03aa4171968f6fb7ab66f77c6be83be239643ad2ef816c67881"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/teerr/releases/download/v#{version}/teerr_#{version}_linux_arm64.tar.gz"
      sha256 "8d3e6e966a3f99c310e1a4705d0671440eaa8bdd73c635b978457ddc2e86ffb7"
    end
  end

  def install
    bin.install "teerr"
    man1.install "teerr.1"
  end

  test do
    output = pipe_output("#{bin}/teerr", "hello")
    assert_equal "hello", output.strip
  end
end
