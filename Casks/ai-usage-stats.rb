cask "ai-usage-stats" do
  version "0.1.0"
  sha256 "9228a0470e7882150302201a6fb7e5a329f216890ceff804e95f90105ae5f6a9"

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
