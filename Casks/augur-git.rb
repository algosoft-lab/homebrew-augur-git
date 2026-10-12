cask "augur-git" do
  version "0.1.1-nightly.28"
  sha256 "60a1ccba6ffea5624f98c03c101e15e1b02ee331d2696ad438bca02a23cdf49c"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.28/augur-git-tauri-macos-arm64-0.1.1-nightly.28.dmg"
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
