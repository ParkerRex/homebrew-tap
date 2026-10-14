cask "ai-usage-stats" do
  version "0.1.0"
  sha256 "e75e3c5d981231b3bc4555c51c6bc993d901aab6871094b982ef44f42b3fab31"

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
