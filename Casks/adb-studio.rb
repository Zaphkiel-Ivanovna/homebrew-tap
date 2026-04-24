cask "adb-studio" do
  version "0.0.7"
  sha256 "f1d25e922cb8c80fa6cb3585cfc6078eb8811f34c9719256834901bc28d24e66"

  url "https://github.com/Zaphkiel-Ivanovna/adb-studio/releases/download/v#{version}/ADB-Studio-#{version}.zip",
      verified: "github.com/Zaphkiel-Ivanovna/adb-studio/"
  name "ADB Studio"
  desc "Manage Android devices via ADB"
  homepage "https://github.com/Zaphkiel-Ivanovna/adb-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "ADB-Studio.app"

  zap trash: [
    "~/Library/Application Support/ADB-Studio",
    "~/Library/Caches/dev.zaphkiel.adbstudio",
    "~/Library/Preferences/dev.zaphkiel.adbstudio.plist",
    "~/Library/Saved Application State/dev.zaphkiel.adbstudio.savedState",
  ]
end
