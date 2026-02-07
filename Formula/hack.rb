class Hack < Formula
  desc "CLI tool for managing hack workspaces with pattern-based scaffolding"
  homepage "https://github.com/cloudygreybeard/hack"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_amd64.tar.gz"
      sha256 "71d5a3a2344fc629e2d84f1932624fdadeb2edbec07b333bbbddec5eed9806da"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_arm64.tar.gz"
      sha256 "0137da17a467d204425e2c80e1099bde9be6e9441e3ca20c71598283d39aaa0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_amd64.tar.gz"
      sha256 "ede6e6a25408feb86fee90d0fa864fc12889d003d93ce703be03774b3f55f79c"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_arm64.tar.gz"
      sha256 "30a73426b1d67b21de82cfb4d45b4297ecb24bf620de22da92c8628c9adc4252"
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
