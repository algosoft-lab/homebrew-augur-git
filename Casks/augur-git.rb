cask "augur-git" do
  version "0.1.1-nightly.14"
  sha256 "91b67a4e4ee89a68e7f9d31451f27b24e7f363fe0f3ae200afdf53a8296d2bed"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.14/augur-git-tauri-macos-arm64-0.1.1-nightly.14.dmg"
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
