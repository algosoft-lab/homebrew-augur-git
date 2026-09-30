cask "augur-git" do
  version "0.1.1-nightly.15"
  sha256 "c9193a19781d7abb28d8a71fbaeb3827de447b7af30f7d87096a015883b390d7"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.15/augur-git-tauri-macos-arm64-0.1.1-nightly.15.dmg"
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
