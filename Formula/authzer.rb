class Authzer < Formula
  desc "Config-driven web access authz management via CDP"
  homepage "https://github.com/cloudygreybeard/authzer"
  version "0.4.0"
  license "Apache-2.0"

    on_macos do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_amd64.tar.gz"
        sha256 "58c8bdd4a4b717567ba5b5fdeb9d95eb607c92b3649e986fe66748168679da38"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_darwin_arm64.tar.gz"
        sha256 "c07fb0911033b740bbe5d20741738f4e9e5eb5ed7e40da87b1ac3052e5010179"
      end
    end
    on_linux do
      on_intel do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_amd64.tar.gz"
        sha256 "63355bc5e58180820cc2565b4e5497dd9f3f8b3748e616a7bd0267fbd1565a99"
      end
      on_arm do
        url "https://github.com/cloudygreybeard/authzer/releases/download/v#{version}/authzer_#{version}_linux_arm64.tar.gz"
        sha256 "b060818d5f316fcf4b18732602f5bd4abce8871a7ff20c773b26554ae537d720"
      end
    end

  def install
    bin.install "authzer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/authzer version")
  end
end
