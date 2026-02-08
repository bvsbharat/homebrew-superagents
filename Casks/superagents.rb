cask "superagents" do
  version "1.3.2"
  sha256 "1c4d7e1739f91198b8e4e76f6d2e5f936c8f8e1c3b8b2bcaa6a134f2115cb46d"

  url "https://github.com/bvsbharat/homebrew-superagents/releases/download/v#{version}/SuperAgents-v#{version}.dmg"
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
