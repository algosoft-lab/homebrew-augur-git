cask "augur-git" do
  version "0.1.1-nightly.13"
  sha256 "0655848f04839c77a16d6d875c9463172d7429d93b5bf28d60b12513475e1bd5"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.13/augur-git-tauri-macos-arm64-0.1.1-nightly.13.dmg"
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
