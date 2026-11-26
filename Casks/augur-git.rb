cask "augur-git" do
  version "0.1.1-nightly.42"
  sha256 "e2b2cb5fe79b0f0a84e6db337737bcd3116d27bbaaed16578142333fb8e1e4a3"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.42/augur-git-tauri-macos-arm64-0.1.1-nightly.42.dmg"
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
