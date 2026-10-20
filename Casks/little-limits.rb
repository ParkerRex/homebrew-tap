cask "little-limits" do
  version "0.2.1"
  sha256 "bb68e2f0f90c3c30ef21d87b7bf5c70d528679c548b81b1c3ad3cee1bceb55da"

  url "https://github.com/ParkerRex/little-limits/releases/download/v#{version}/Limits-Left-#{version}.zip"
  name "Little Limits"
  desc "Menu bar monitor for Claude and Codex usage limits across accounts"
  homepage "https://github.com/ParkerRex/little-limits"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Limits Left.app"

  uninstall quit: "com.parkerrex.ai-usage-stats"

  zap trash: [
    "~/Library/Application Support/AI Usage Stats",
    "~/Library/Preferences/com.parkerrex.ai-usage-stats.plist",
    "~/Library/WebKit/com.parkerrex.ai-usage-stats",
  ]
end
