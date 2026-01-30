cask "pingbar" do
  version "2.4.0"
  sha256 "f5682f8c225f9aaf2144ac2323884853b94f13558a18e8f3542301c31b6778b7"

  url "https://github.com/elitan/ping-bar/releases/download/v#{version}/PingBar.dmg"
  name "PingBar"
  desc "Network diagnostics in your menu bar"
  homepage "https://github.com/elitan/ping-bar"

  depends_on macos: ">= :ventura"

  app "PingBar.app"

  zap trash: [
    "~/Library/Preferences/com.elitan.pingbar.plist",
    "~/Library/Caches/com.elitan.pingbar",
  ]
end
