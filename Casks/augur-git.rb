cask "augur-git" do
  version "0.1.1-nightly.16"
  sha256 "75a65574c5c70444267281a12acf539b615c7a69bc3b43df66d1657943cefc46"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.16/augur-git-tauri-macos-arm64-0.1.1-nightly.16.dmg"
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
