class Kubefs < Formula
  desc "Mount Kubernetes objects as a FUSE filesystem"
  homepage "https://github.com/cloudygreybeard/kubefs"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_darwin_amd64.tar.gz"
      sha256 "284fb386e42982c64b751c35adda86f98bfdab41c4656f064e57a59db27d055a"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_darwin_arm64.tar.gz"
      sha256 "765ccd283f86b2915e1f1f19c5d78a56d228042a34f16e28783e6985010b8cff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_linux_amd64.tar.gz"
      sha256 "98c80489e185ce823469505f5529793dfe77b8c0cf496ec4b47b2afe1e7cda91"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kubefs/releases/download/v#{version}/kubefs_#{version}_linux_arm64.tar.gz"
      sha256 "a3a0387d9a0cd022864117d8e65a1902d6d00e15036cd2461aee15064cf74d5a"
    end
  end

  def install
    bin.install "kubefs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubefs version")
  end
end
