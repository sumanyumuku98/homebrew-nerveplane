class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.1/nerveplane-darwin-arm64"; sha256 "243caa3d6954343e07b9848f49c4093c6de8960417df17ea0c0c5d6a78e8f7e6" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.1/nerveplane-darwin-x64"; sha256 "18a0f629d6f559d540f5c65a5ec07d551b04818b0751b1f3a3d8fae8d6b2f0e6" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.1/nerveplane-linux-x64"; sha256 "e8572c21ad5b6a9f2346945943a59ab27ba814eaada29040a8a362ec72a58d4f" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.1/nerveplane-linux-arm64"; sha256 "88c3c74a3f2f8e7f4da88c035bb628cdd2a713d02e0fd3177130b58c115c29f3" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
