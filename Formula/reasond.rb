class Reasond < Formula
  desc "Local-first reasoning audit viewer for coding-agent sessions"
  homepage "https://github.com/rpcarvs/reasond"
  license "MIT"
  version "0.1.3"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.3/reasond_0.1.3_darwin_arm64.tar.gz"
      sha256 "4b97ab0591e49259d91af6c78142c23c95dcacc863a4035df0523d2e31f02cad"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.3/reasond_0.1.3_darwin_amd64.tar.gz"
      sha256 "194d4658b9976d1e9e615a2a46e29adb796a44a404389897419e4fa9b6f372f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.3/reasond_0.1.3_linux_arm64.tar.gz"
      sha256 "18eaf09d7abc70473eba1bdd527c0efceea4a23c86aa7b9fd4fcf1ce4f455246"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.1.3/reasond_0.1.3_linux_amd64.tar.gz"
      sha256 "84e4acbba95bba923ba4911f30c59da54868bb123ff7b95933c2ececd62c1c26"
    end
  end

  def install
    bin.install "reasond"
  end

  test do
    system "#{bin}/reasond", "-v"
  end
end
