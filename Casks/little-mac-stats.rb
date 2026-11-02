cask "little-mac-stats" do
  version "0.4.0"
  sha256 "017fe1a81cfc8342be95bf14b92109c4a994c46f81d751f71e84de4eb010741a"

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
