cask "little-mac-stats" do
  version "0.3.0"
  sha256 "1d45f5ef8478d00c730c558e1524ff21525ac242c7b91450bcc8d3bbe232cd27"

  url "https://github.com/ParkerRex/little-mac-stats/releases/download/v#{version}/Little-Mac-Stats-#{version}.zip"
  name "Little Mac Stats"
  desc "Menu bar CPU monitor for apps and AI tools"
  homepage "https://github.com/ParkerRex/little-mac-stats"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Little Mac Stats.app"

  uninstall quit: "com.thelittleworker.little-mac-stats"

  zap trash: "~/Library/Preferences/com.thelittleworker.little-mac-stats.plist"
end
