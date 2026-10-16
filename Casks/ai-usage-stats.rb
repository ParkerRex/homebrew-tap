cask "ai-usage-stats" do
  version "0.2.0"
  sha256 "0368cdc88d27d9461379d458b110be3a40c1aa6f4b94438edad9c5d9ee5d0b2b"

  url "https://github.com/ParkerRex/ai-usage-stats/releases/download/v#{version}/AI-Usage-Stats-#{version}.zip"
  name "AI Usage Stats"
  desc "Menu bar monitor for Claude and Codex usage limits across accounts"
  homepage "https://github.com/ParkerRex/ai-usage-stats"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AI Usage Stats.app"

  uninstall quit: "com.parkerrex.ai-usage-stats"

  zap trash: [
    "~/Library/Application Support/AI Usage Stats",
    "~/Library/Preferences/com.parkerrex.ai-usage-stats.plist",
    "~/Library/WebKit/com.parkerrex.ai-usage-stats",
  ]
end
