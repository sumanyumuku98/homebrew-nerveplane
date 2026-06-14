class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.3.0/nerveplane-darwin-arm64"; sha256 "d92b02b284d2443a7bf69dbef42c226a4abad39b4d4d12adfa59263677d9a5de" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.3.0/nerveplane-darwin-x64"; sha256 "50e7e430f81c5d018452b41795fd622a075d4da084b043bd3649763c0923abb6" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.3.0/nerveplane-linux-x64"; sha256 "6aec0218528fedd9882533993b308cf985260f8ba07c4a37a966458586931a72" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.3.0/nerveplane-linux-arm64"; sha256 "e21e13c5b6f81acfda3a7c0111da71341d994b5a21181b38c4026bdac6de9d82" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
