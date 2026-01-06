class Kql < Formula
  desc "CLI toolkit for Kusto Query Language (KQL) and Azure Data Explorer"
  homepage "https://github.com/cloudygreybeard/kql"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_amd64.tar.gz"
      sha256 "3eaccc8438f33aacd3b7e0c47bcc68b2a80b94b50b3904898abc659f68b861ec"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_arm64.tar.gz"
      sha256 "18a657f47ae998f7495282aa8f92b1c2aeea92cb1d10014b1d21426b82b350af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_amd64.tar.gz"
      sha256 "6965d5f5ae367d2aae2cbd3f6406eacc239ef49a5cb325f1bb984852981d8d58"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_arm64.tar.gz"
      sha256 "477f270c28cf8b499ab9f9e0276f3e95eb4f0816cde4b4f00a24abf62f637e2a"
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
