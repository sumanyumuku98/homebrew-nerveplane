class Nerveplane < Formula
  desc "Coordination plane for autonomous coding agents"
  homepage "https://github.com/sumanyumuku98/Nerveplane"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.1/nerveplane-darwin-arm64"; sha256 "45cfdd07799eb8f4dec827b8a6aaa779b7dbae1655c51c8235be21db9429fb0f" }
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.1/nerveplane-darwin-x64"; sha256 "4ddcabb263763821666867083a4ebf053cc3f3316da4b3dc442bee8e5a416665" }
  end
  on_linux do
    on_intel { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.1/nerveplane-linux-x64"; sha256 "eeb194bd86aa1f41b82c71a4fa58e908b8abccbe40031673ad5d2b993e33dda5" }
    on_arm { url "https://github.com/sumanyumuku98/Nerveplane/releases/download/v0.11.1/nerveplane-linux-arm64"; sha256 "832701c50cda24a18838371c3067a8563ef202965356fc7f93bcc6248c3a4f23" }
  end

  def install
    bin.install Dir["nerveplane-*"].first => "nerveplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerveplane --version")
  end
end
