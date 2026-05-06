class Reasond < Formula
  desc "Local-first reasoning audit viewer for coding-agent sessions"
  homepage "https://github.com/rpcarvs/reasond"
  license "MIT"
  version "0.2.0"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.2.0/reasond_0.2.0_darwin_arm64.tar.gz"
      sha256 "b11172212e3d2ad92f05f0308145da6ae105ac2efddf2d4b74fa857e179a6ab1"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.2.0/reasond_0.2.0_darwin_amd64.tar.gz"
      sha256 "db0d3c2cfd6c1d09337198fef24458b6abc53a7c0263ca8510dde5eebe2ec343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/reasond/releases/download/v0.2.0/reasond_0.2.0_linux_arm64.tar.gz"
      sha256 "72402b7582bfadce82be2980fb4cb1d13c416c4d576d684e13ac29ef5d6fe8bf"
    else
      url "https://github.com/rpcarvs/reasond/releases/download/v0.2.0/reasond_0.2.0_linux_amd64.tar.gz"
      sha256 "6cbc2bd3135e3a2909b189b60537332ac07cd4e2918b38b30bc2a5e7e08eca88"
    end
  end

  def install
    bin.install "reasond"
  end

  test do
    system "#{bin}/reasond", "-v"
  end
end
