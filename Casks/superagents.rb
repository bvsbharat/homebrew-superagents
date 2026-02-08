cask "superagents" do
  version "1.3.2"
  sha256 "edab0b405a97150f3105de847cfe70e75bbb7ebc150ee5b24f1255762da4283f"

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
