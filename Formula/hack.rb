class Hack < Formula
  desc "CLI tool for managing hack workspaces with pattern-based scaffolding"
  homepage "https://github.com/cloudygreybeard/hack"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_amd64.tar.gz"
      sha256 "a7dc52a50c05486308affaba3009a14a957a0a1c36f2d00af777a8fefd8ae3da"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_arm64.tar.gz"
      sha256 "becd6f751b9fb2ed15db8566a4a404d717bba39c791ce91ac0b957e2b009db7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_amd64.tar.gz"
      sha256 "cbdbdc272b4a5cc87e82acd4de0a6188afe54e807e36384e14fd65754265b565"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_arm64.tar.gz"
      sha256 "05efafef7790646de1023f5bfc479f53c3cceafb7ffb81de94639c014e4fd049"
    end
  end

  def install
    bin.install "hack"
  end

  def caveats
    <<~EOS
      To enable shell integration, run:
        hack bootstrap --install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hack version")
  end
end
