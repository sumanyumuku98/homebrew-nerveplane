class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.1.0/nerveplane-darwin-arm64"
      sha256 "eb9752faadce9fb64858dbed13038358302bcdbbddcc35c7b240837be477e88a"
    end
    on_intel do
      url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.1.0/nerveplane-darwin-x64"
      sha256 "1bc725297e083938ee9d4777a4b07d87e3dc83c1c2177067e2f360e5759a20b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.1.0/nerveplane-linux-x64"
      sha256 "6516de498952162e6b576a2dcac9a6e7fd5eb1e2a5100b6d4bb05d389be41847"
    end
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
