cask "augur-git" do
  version "0.1.1-nightly.17"
  sha256 "f22a9dcc9d857c039b88473ac2a846ad7957e42bb35f92fcd1f1ec6df4b0f791"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.17/augur-git-tauri-macos-arm64-0.1.1-nightly.17.dmg"
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
