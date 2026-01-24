cask "adb-studio" do
  version "0.0.4"
  sha256 "5caac042f7a314281fa0d59ee3d00867e59b4adbf8b5740b29f12866dc3cf914"

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
