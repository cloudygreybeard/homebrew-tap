class Stamp < Formula
  desc "Insert timestamps into filenames by renaming or copying"
  homepage "https://github.com/cloudygreybeard/stamp"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_darwin_amd64.tar.gz"
      sha256 "16b6f70b1506358cceada137195ac6d01d6932c95d2427a97491ce1a3dc57edc"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_darwin_arm64.tar.gz"
      sha256 "6fea7b2fba990b22cf8efdf9d80fdfe28555f21348e19bef46db5e040d384871"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_linux_amd64.tar.gz"
      sha256 "eceb08004b9c8aeda75a08ca8bf91263612fc9d4d056230b4b4f8dc8572358a4"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/stamp/releases/download/v#{version}/stamp_#{version}_linux_arm64.tar.gz"
      sha256 "7cc4989393defe404f23df52cf41e58b8afa00947b2f4632bcdc19e04c13a8ff"
    end
  end

  def install
    bin.install "stamp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stamp version")
  end
end
