class Dailylog < Formula
  desc "Daily activity logging with GitHub storage and MCP integration"
  homepage "https://github.com/cloudygreybeard/dailylog-mcp"
  version "0.1.5"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/cloudygreybeard/dailylog-mcp/releases/download/v0.1.5/dailylog-mcp_Darwin_arm64.tar.gz"
    sha256 "204269670b55d985eda419c999436dfbda4aba83d4fe8b94c3946f20f8c210db"
  else
    url "https://github.com/cloudygreybeard/dailylog-mcp/releases/download/v0.1.5/dailylog-mcp_Darwin_x86_64.tar.gz"
    sha256 "1d903b95fd9e7a5b8b8191e325dbfa5cc7b487772a22585b68bb5437eb40cf07"
  end

  def install
    bin.install "dailylog"
    bin.install "dailyctl"
  end

  test do
    system "#{bin}/dailylog", "--version"
    system "#{bin}/dailyctl", "version"
  end
end
