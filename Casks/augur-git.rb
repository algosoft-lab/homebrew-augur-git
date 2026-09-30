cask "augur-git" do
  version "0.1.1-nightly.19"
  sha256 "f5b86f63a83658478223056a73ece3673f6eb659a88152f20ea57184f209b524"

  url "https://github.com/algosoft-lab/augur-git/releases/download/tauri-nightly-0.1.1-nightly.19/augur-git-tauri-macos-arm64-0.1.1-nightly.19.dmg"
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
