class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.13.0/nerveplane-darwin-arm64"; sha256 "819bc7317a26cce6bb203b73c28b565f3ac6f3b750aab8f6d4f54c13825fd14c" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.13.0/nerveplane-darwin-x64"; sha256 "6e38dbdcd9433d6aa74984070bf714669aacd1e424187781df04621e34902ce0" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.13.0/nerveplane-linux-x64"; sha256 "3f9c10858f8008574c2251a125bcecd1e86fe347b535ab748a4e8871a63591d2" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.13.0/nerveplane-linux-arm64"; sha256 "7a1af0106d1edcf06b1dfd48dc1f47f901c42c6cac35dfc06d9eda7808663552" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
