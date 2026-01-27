cask "pingbar" do
  version "2.2.0"
  sha256 "36bbe87fdbc09bbdeaef2f62a883b542ea13ac79494f2bf0bdf4847697beecfc"

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
