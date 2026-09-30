cask "augur-git" do
  version "0.1.1-nightly.20"
  sha256 "2a95858a5986bce51c3c2408ce1c27555bca5c940c3e39b89a3f12dda206d8df"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.20/augur-git-tauri-macos-arm64-0.1.1-nightly.20.dmg"
  name "Augur Git"
  desc "Review-first desktop Git client"
  homepage "https://github.com/algosoft-lab/augur-git"

  depends_on arch: :arm64

  app "Augur Git Tauri.app"

  caveats <<~EOS
    Nightly builds use an ad-hoc signature and are not notarized. macOS may ask you to approve the app
    in System Settings -> Privacy & Security after installation or upgrade.
  EOS
end
