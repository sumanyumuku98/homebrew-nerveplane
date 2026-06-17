class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.0/nerveplane-darwin-arm64"; sha256 "f4acc966e91dd2fc4cbfafd7f1e4f4577b93cc6e2b1f7dff26d6575ac3e69909" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.0/nerveplane-darwin-x64"; sha256 "946032a8b13912e592e0007061dda4f050f10755d72e7739c807936391ab8a07" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.0/nerveplane-linux-x64"; sha256 "b62ab0a25184a11f9b4a8ffeb633259d1e177f316143ddaf861722b8007473d9" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.10.0/nerveplane-linux-arm64"; sha256 "39f95c798698b4518ca24bae821afb20193f6eb231bf28f797f4c2dcf7fe6221" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
