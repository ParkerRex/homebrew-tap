cask "mac-stats" do
  version "0.2.0"
  sha256 "e4ec84d023c73bea2b3ce727cacaba264c6fb454ed87d185de803b6971d6508f"

  url "https://github.com/ParkerRex/mac-stats/releases/download/v#{version}/Mac-Stats-#{version}.zip"
  name "Mac Stats"
  desc "Menu bar CPU monitor for apps and AI tools"
  homepage "https://github.com/ParkerRex/mac-stats"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mac Stats.app"

  uninstall quit: "com.parkerrex.mac-stats"

  zap trash: "~/Library/Preferences/com.parkerrex.mac-stats.plist"
end
