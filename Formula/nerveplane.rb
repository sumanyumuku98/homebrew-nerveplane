class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.2.0/nerveplane-darwin-arm64"; sha256 "6a819a2ef6a9f84d7c0fd60c72bcc78ecaa9959317f52bb948e3145a30b234a0" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.2.0/nerveplane-darwin-x64"; sha256 "36ae9931a35b91089afc8e308028da4f8beb5fd0ba21e58f0a5101cba6cfc48d" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.2.0/nerveplane-linux-x64"; sha256 "5a508e1da6c90d1221fb3d7dd4856c39b4927ad10aedb711e3e5796f566790a4" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.2.0/nerveplane-linux-arm64"; sha256 "884230a5f918a56852bacc8447f8424b27d5bd2c85e034d28488c0f3c40d54f0" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
