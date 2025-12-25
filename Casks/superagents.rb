cask "superagents" do
  version "1.0.0"
  sha256 :no_check  # Update with actual SHA256 when DMG is available

  url "https://github.com/bvsbharat/homebrew-superagents/releases/download/v#{version}/SuperAgents.dmg"
  name "SuperAgents"
  desc "Voice-controlled AI assistant with Dynamic Island-style notch UI"
  homepage "https://github.com/bvsbharat/SuperAgents"

  livecheck do
    url "https://raw.githubusercontent.com/bvsbharat/homebrew-superagents/main/appcast.xml"
    strategy :sparkle
  end

  app "SuperAgents.app"

  zap trash: [
    "~/Library/Application Support/SuperAgents",
    "~/Library/Preferences/SuperAgents.bvsbharat.SuperAgents.plist",
    "~/Library/Caches/SuperAgents.bvsbharat.SuperAgents",
  ]
end
