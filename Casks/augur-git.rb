cask "augur-git" do
  version "0.1.1-nightly.31"
  sha256 "5434908415bfcabf435f1be21b02aa34d8579b12d7b7cbe794c29f7ebe12afb8"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.31/augur-git-tauri-macos-arm64-0.1.1-nightly.31.dmg"
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
