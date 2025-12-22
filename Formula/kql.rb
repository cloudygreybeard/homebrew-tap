class Kql < Formula
  desc "CLI toolkit for Kusto Query Language (KQL) and Azure Data Explorer"
  homepage "https://github.com/cloudygreybeard/kql"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_amd64.tar.gz"
      sha256 "9e1b591ad6bcf2ef4f4680a114e8b31b5ee7456f62500f4703bbbc922d1b6fb4"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_darwin_arm64.tar.gz"
      sha256 "b439716c13e4b35fd4a11d43542cb5e31355c8fe80aa913ad2fb0f836e827c45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_amd64.tar.gz"
      sha256 "2e803de43281fec88c34359e6919d6272653df8af960e68c8d73d89c4b15f821"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/kql/releases/download/v#{version}/kql_#{version}_linux_arm64.tar.gz"
      sha256 "9171c997fd9f04476b5d9daf5ef458b99d0329ea0bfe4ae9dfd53fbd4df1573c"
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
