class Kql < Formula
  desc "CLI toolkit for Kusto Query Language (KQL) and Azure Data Explorer"
  homepage "https://github.com/cloudygreybeard/kql"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_amd64.tar.gz"
      sha256 "1ee8c30377dc65949578d9c0d648070732d55744d1c11639e3b17a14a88029b8"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_arm64.tar.gz"
      sha256 "43edd6aeaae3278e764459abfe9f2fb3d9e413580250ab43ec0721adaaeb40de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_amd64.tar.gz"
      sha256 "aeae916aead6dcb89c2f488978983011bca095ee4118bb922787c78a06385ba1"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_arm64.tar.gz"
      sha256 "d386ec951d35aa54aaf14973adfe6b52d3202f910ffb8191221228b904c03aff"
    end
  end

  def install
    bin.install "kql"
  end

  test do
    # Test version command
    assert_match version.to_s, shell_output("#{bin}/kql version")
    
    # Test link build (should fail without required flags, confirming CLI works)
    output = shell_output("#{bin}/kql link build 2>&1", 1)
    assert_match "required flag", output
  end
end
