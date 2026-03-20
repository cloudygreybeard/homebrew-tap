class Kubefs < Formula
  desc "Mount Kubernetes objects as a FUSE filesystem"
  homepage "https://github.com/cloudygreybeard/kubefs"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_darwin_amd64.tar.gz"
      sha256 "d53cb3fbd4b5226ee2a07b5a9405ed8065bae8382191bcbf560ff225396a9c24"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_darwin_arm64.tar.gz"
      sha256 "2fdb38353c61e38d5a0ada7edb16c1bffdf677056b346cd9ee50d1262b67fd7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_linux_amd64.tar.gz"
      sha256 "436ada0d0cda3325c5dd095343b07a440ecbe78c8b7f9298408b31747e149a4e"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_linux_arm64.tar.gz"
      sha256 "a974b5675c073b83b88a776d42c2dabe87f4bbd349c5bf416b15d858d71e5360"
    end
  end

  def install
    bin.install "kubefs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubefs version")
  end
end
