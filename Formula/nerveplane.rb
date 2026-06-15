class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.6.0/nerveplane-darwin-arm64"; sha256 "803d99b4164e2fd9ca0e69ce3254e519f1990523d75f0b6ef70e16a36a999656" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.6.0/nerveplane-darwin-x64"; sha256 "44c03a382bfe72824d58e546429831494c0aabcca79604190d5d9a3b74bfe0b4" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.6.0/nerveplane-linux-x64"; sha256 "b24e5e5430105ce61f1b9827b678c100ac72c75074b8fbbe6d7b091db2fe511e" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.6.0/nerveplane-linux-arm64"; sha256 "87912f658a8ff82d2c222f44f044b6cabbc3b8cb978184add4f176060576dddb" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
