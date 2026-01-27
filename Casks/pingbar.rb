cask "pingbar" do
  version "2.3.0"
  sha256 "4e4b3d3bb3d16fc0023c7eb10dc84d6b300befad586450cca44a5d8e08980ef7"

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
