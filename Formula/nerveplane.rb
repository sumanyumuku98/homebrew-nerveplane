class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.9.0/nerveplane-darwin-arm64"; sha256 "01de14f42c11f0b3f8c465c570a0b45d8bde023c5a6d2c77be7577dff7b855bb" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.9.0/nerveplane-darwin-x64"; sha256 "c385c96e897ec54ecfca5d478049e0fc8dcf23a6401de8711fc2faa04741ef90" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.9.0/nerveplane-linux-x64"; sha256 "88eda78dd2e2a109c9d42dcb287d2d7df08c7de084e48aaff4cbbece9361782d" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.9.0/nerveplane-linux-arm64"; sha256 "9c63e13f0d3ad6aa2a73cc0800651b1e52be06c7740d65d053f1ee289195d25b" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
