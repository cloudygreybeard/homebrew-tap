class Stamp < Formula
  desc "Insert timestamps into filenames by renaming or copying"
  homepage "https://github.com/cloudygreybeard/stamp"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_darwin_amd64.tar.gz"
      sha256 "dfa15a2bca65db05d381e7d91a0b5acefda029df35223c7987ca900a1da99317"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_darwin_arm64.tar.gz"
      sha256 "4873a367fe41726544bde60575768e3a424da2f0715424fe136298107060e08d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_linux_amd64.tar.gz"
      sha256 "69c201bbcae2a1275872beb542e074afe40754c5bccf5bde21e9fa6d89477cdf"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_linux_arm64.tar.gz"
      sha256 "18febf810cf9d1618cb1ceb43baa806d0232e2840c5467dab834f90a25897807"
    end
  end

  def install
    bin.install "stamp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stamp version")
  end
end
