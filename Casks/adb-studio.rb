cask "adb-studio" do
  version "0.0.6"
  sha256 "4b4f302291d052e6789f0980f8e8a2b142e1ea670be9cc6310d995ae5459f114"

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
