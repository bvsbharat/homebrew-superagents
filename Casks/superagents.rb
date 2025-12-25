cask "superagents" do
  version "1.0.1"
  sha256 "e53c1267406fd243c245476009f5d11d7ca1f3897507fa5594e6d88e72c8c583"

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
