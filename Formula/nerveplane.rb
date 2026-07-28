class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.14.0/nerveplane-darwin-arm64"; sha256 "eef269025dae232af186808bfaf286c488b8108d0c049ebe126de7637317d375" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.14.0/nerveplane-darwin-x64"; sha256 "abbf65375e358024539dab541fcda5716925c27cad45823523cbabdbee2a551a" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.14.0/nerveplane-linux-x64"; sha256 "e5ac1f6806d22c806fcff9dd25c17aee44fd135917526a8f405187ee8bda1967" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.14.0/nerveplane-linux-arm64"; sha256 "6f2659d5514c81fe93222144e43be7b46b6a37ce2bb0e277b3f75b023be8e58f" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
