class Kql < Formula
  desc "CLI toolkit for Kusto Query Language (KQL) and Azure Data Explorer"
  homepage "https://github.com/cloudygreybeard/kql"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_amd64.tar.gz"
      sha256 "c7907402ad8793097ff2eee402dcdcd78f4585e8f12e75ff561511d2bbc0a2ad"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_arm64.tar.gz"
      sha256 "3f8cfbdaec5efe7495560471e148288939b6975d085ba32f4b924890b3e4d937"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_amd64.tar.gz"
      sha256 "8a30fbcbfbe92a2352e70f66e6c9964b317fa718e3549f8a631e82cf68e34903"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_arm64.tar.gz"
      sha256 "7c89ca117b960ef47a714fc76c22161956d5e5d918d569f553132515ca677685"
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
