class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.5.0/nerveplane-darwin-arm64"; sha256 "aa036c5aa8a8d5a22350be460bcdd3ff1847206e510a64105d95fd6c3332fd2d" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.5.0/nerveplane-darwin-x64"; sha256 "d85e1fbe438995eaf44c102b91331f610b42c430d6f69e153b6723efa486c052" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.5.0/nerveplane-linux-x64"; sha256 "3dbab0389507a685e07c51e541872f6094f50833ba0db8d2e4e9ba40b3818470" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.5.0/nerveplane-linux-arm64"; sha256 "03e94d77bc08595bce45f4f62bae9863041c98aa85d9de0dac33ba178b516545" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
