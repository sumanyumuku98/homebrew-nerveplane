class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.12.0/nerveplane-darwin-arm64"; sha256 "3ed00721bbca306557e96b4c4fbfc17fb75daafe7c37b98b12b13e878deb9bc0" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.12.0/nerveplane-darwin-x64"; sha256 "f20601d997a55cf499dc0dd9e1e976333e2f823d490060e4da1ffabd4988f1ad" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.12.0/nerveplane-linux-x64"; sha256 "72fa25563936e2dcbdccb9abecb4aa17f413dcc741e467eb3364b1cd63301638" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.12.0/nerveplane-linux-arm64"; sha256 "33775fc594f1a82989024869d4ec443e203b314c948b9767e29e5780a9ad85f1" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
