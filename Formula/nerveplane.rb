class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.7.0/nerveplane-darwin-arm64"; sha256 "7aa0ba08ca4b9877402fdb268af864edad2f14653c72228e6a8b5a13eb827946" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.7.0/nerveplane-darwin-x64"; sha256 "0a4fb5ac32f643d525d2efdcf6bc61e8c29ceb87ec68e520ef14be5487972aaa" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.7.0/nerveplane-linux-x64"; sha256 "451d33a35698cef6d082f4bc567c803c2ec1bfc0ee0b747273de17e9a40a268a" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.7.0/nerveplane-linux-arm64"; sha256 "bd5048b5c99282a9659ed7c84c91fedc714359884a0b32a8625013fed4ef8cab" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
