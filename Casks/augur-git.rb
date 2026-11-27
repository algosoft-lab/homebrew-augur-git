cask "augur-git" do
  version "0.1.1-nightly.43"
  sha256 "8fa07ebc197c7921fd1aed54c022cfbfbc7ca8d46d75fdd62b269ba311ec0fa2"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.43/augur-git-tauri-macos-arm64-0.1.1-nightly.43.dmg"
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
