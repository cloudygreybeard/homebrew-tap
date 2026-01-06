class Kql < Formula
  desc "CLI toolkit for Kusto Query Language (KQL) and Azure Data Explorer"
  homepage "https://github.com/cloudygreybeard/kql"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_amd64.tar.gz"
      sha256 "dd50a198d07181a05c63a4d46e4bd634739de1e370a2fbe724a24c3f01ea0afe"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_arm64.tar.gz"
      sha256 "a2802d51abe18536a496dd98b7e3dfa672efc6c4a03c7861875b1d5d67c9a78e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_amd64.tar.gz"
      sha256 "c2a9a4ed847a75f1451b8c2082c9a8115ae8693369f5b5f2442760cee3577808"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_arm64.tar.gz"
      sha256 "d07f7457099e464d959e056da9c02981a2288fe08651c1c95fc40b4aa4233acd"
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
