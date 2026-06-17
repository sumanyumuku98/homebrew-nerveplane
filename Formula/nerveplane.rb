class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.0/nerveplane-darwin-arm64"; sha256 "b5ae1d4a4a9a823983afacb83dbc5fc4f1cda12207685ad6df411945ee85e797" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.0/nerveplane-darwin-x64"; sha256 "2479d434ef628ca04545297f5dfdee592cbf823aad9605a5b2d7e6893303d34a" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.0/nerveplane-linux-x64"; sha256 "bc08c2ff42a3f0a24c8b484eb95338eef49173b00fc749b74b38d210a5621568" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.0/nerveplane-linux-arm64"; sha256 "1b83c1560fe1956cfa89128e291365743e6d931a7a66dd3aa190de456e39c767" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
