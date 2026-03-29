class Hack < Formula
  desc "CLI tool for managing hack workspaces with pattern-based scaffolding"
  homepage "https://github.com/cloudygreybeard/hack"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_amd64.tar.gz"
      sha256 "08223c8233f18d4c71a4ccef9a51ff7679ff61892b2c78ba64b84f17934aae85"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_darwin_arm64.tar.gz"
      sha256 "a2612202af621c94902217a25da5e26856a7cf6773532335084c830115c623d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_amd64.tar.gz"
      sha256 "be84ebdd1761c6a58e6f6335a858d78bed24aaa79c23a267a8a55f25956c0036"
    end
    on_arm do
      url "https://github.com/cloudygreybeard/hack/releases/download/v#{version}/hack_#{version}_linux_arm64.tar.gz"
      sha256 "5f8ba8a6202435a0e04ac25e849c7f98acb29950f4d42149f9cb775f19279206"
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
