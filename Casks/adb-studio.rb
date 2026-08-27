cask "adb-studio" do
  version "0.1.0"
  sha256 "a6b5c203a5ba6c81364246b126560a85adc39e2c458702f9d626d0cd12d2a191"

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
