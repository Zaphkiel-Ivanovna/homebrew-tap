cask "adb-studio" do
  version "0.0.9"
  sha256 "e850ec8e8f55f690b80254a1801f5ac9ba46b84579acc00288df82e326705580"

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
