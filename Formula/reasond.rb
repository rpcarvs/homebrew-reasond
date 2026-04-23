class Reasond < Formula
  desc "Local-first reasoning audit viewer for coding-agent sessions"
  homepage "https://github.com/rpcarvs/reasond"
  license "MIT"
  version "0.1.2"

  depends_on "git"
  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_darwin_arm64.tar.gz"
      sha256 "815dd6f9d7731df8158ca9ab76402f70999def3a5518561cb3171d1e8b0da793"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_darwin_amd64.tar.gz"
      sha256 "78b6274411a7351d0c20d85f1fb95e4cd2ad6a2db3f989bf439f0d18a7c4d18e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_linux_arm64.tar.gz"
      sha256 "f375536aeca81e6b37619416a3ba1c3c486ccf57b3a3681b5d5dfca49ad5a49c"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.2/reasond_0.1.2_linux_amd64.tar.gz"
      sha256 "e1c692abfb8f3a21d25808de80c409a056adfc6842aa66689bcba966fc8f283a"
    end
  end

  def install
    bin.install "reasond"
  end

  test do
    system "#{bin}/reasond", "-v"
  end
end
