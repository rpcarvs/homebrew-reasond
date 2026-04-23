class Reasond < Formula
  desc "Local-first reasoning audit viewer for coding-agent sessions"
  homepage "https://github.com/rpcarvs/reasond"
  license "MIT"
  version "0.1.2"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_darwin_arm64.tar.gz"
      sha256 "0a5fe7b338b093f0e20aae0c9eadd07e7267264b357f6b233b2fa21c24bf31de"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_darwin_amd64.tar.gz"
      sha256 "b38adff866a57407bd634c7c94bb692e134fd33080a97ed37ed413657f2a8984"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_linux_arm64.tar.gz"
      sha256 "553e5d7107c787dd373b637d86222ae61f2192453070f6e277a110b80aae1030"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_linux_amd64.tar.gz"
      sha256 "dc537311a5985cabb347aee9e2aed884adc21a80d4cbd6a4720d4ff1be981d71"
    end
  end

  def install
    bin.install "reasond"
  end

  test do
    system "#{bin}/reasond", "-v"
  end
end
