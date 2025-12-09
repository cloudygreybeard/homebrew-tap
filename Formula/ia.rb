class Ia < Formula
  desc "Internet Archive CLI - A fast Go implementation"
  homepage "https://github.com/cloudygreybeard/ia-go"
  version "0.1.0"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/cloudygreybeard/ia-go/releases/download/v0.1.0/ia_0.1.0_darwin_arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  else
    url "https://github.com/cloudygreybeard/ia-go/releases/download/v0.1.0/ia_0.1.0_darwin_x86_64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "ia"
  end

  test do
    system "#{bin}/ia", "version"
  end
end
