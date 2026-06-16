class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.8.0/nerveplane-darwin-arm64"; sha256 "42a3e99e441842f2105dc454d332be0fca7341afddad4fa81f5637ba7aa86526" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.8.0/nerveplane-darwin-x64"; sha256 "4a0fa1f0cd4c1a22cb0f9699e1eb6043f1a149b59220a68eb0f4db56aac2f461" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.8.0/nerveplane-linux-x64"; sha256 "d9fc2965f68d935204abfd742f17c6359a0c949af4d20f92d5a6b85a6a6ea02b" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.8.0/nerveplane-linux-arm64"; sha256 "6d471d35e6307fa9f28e46aab1c0384f92fb916fac7abc9db093ea5683259839" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
