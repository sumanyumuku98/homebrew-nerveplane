class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.4.0/nerveplane-darwin-arm64"; sha256 "1b0b02a7ab549843dce9ee1bb6fdb27128a173bdc9fbc2666038ea9cac906484" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.4.0/nerveplane-darwin-x64"; sha256 "076b765e1c9a9fc21ad840bc1b7ff8b265eced0c96e21d8e201e3ee0778bd96e" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.4.0/nerveplane-linux-x64"; sha256 "93294a9fbaba628d5d6d5f65fabd0d9ab585cf9cc8079374b29c70e64afd0719" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.4.0/nerveplane-linux-arm64"; sha256 "52f99ff7b8f8bba59b63711f2b3e39e81688385764c80c9374099ceb7064fc28" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
