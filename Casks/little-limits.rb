cask "little-limits" do
  version "0.3.0"
  sha256 "83cfda74a001392ac2ee65e53153413894eedf3193c0dce9cdede378e723b74e"

  url "https://github.com/Little-AI-Company/little-limits/releases/download/v#{version}/Little-Limits-#{version}.zip"
  name "Little Limits"
  desc "Menu bar monitor for Claude and Codex usage limits across accounts"
  homepage "https://github.com/Little-AI-Company/little-limits"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Little Limits.app"

  uninstall quit: "com.parkerrex.ai-usage-stats"

  zap trash: [
    "~/Library/Application Support/AI Usage Stats",
    "~/Library/Preferences/com.parkerrex.ai-usage-stats.plist",
    "~/Library/WebKit/com.parkerrex.ai-usage-stats",
  ]
end
