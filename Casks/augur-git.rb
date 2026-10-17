cask "augur-git" do
  version "0.1.1-nightly.34"
  sha256 "b5d3d1409d5becaa15ce49ea05165f58904a3e901438696c57dc0cc46659bfd4"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.34/augur-git-tauri-macos-arm64-0.1.1-nightly.34.dmg"
  name "Augur Git"
  desc "Review-first desktop Git client"
  homepage "https://github.com/algosoft-lab/augur-git"

  depends_on arch: :arm64

  app "Augur Git Tauri.app"
  binary "#{appdir}/Augur Git Tauri.app/Contents/MacOS/agit", target: "agit"

  caveats <<~EOS
    Nightly builds use an ad-hoc signature and are not notarized. macOS may ask you to approve the app
    in System Settings -> Privacy & Security after installation or upgrade.
  EOS
end
