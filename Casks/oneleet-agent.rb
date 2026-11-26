cask "oneleet-agent" do
  version "2.0.5"
  sha256 "31d0ce848456685fa0493f3ae9dd0aecd802cb8cdafed2d769b62e02642b0a91"

  url "https://downloads.oneleet.com/agent/macos/Oneleet-#{version}.dmg"
  name "Oneleet"
  desc "Monitors your system for security and compliance"
  homepage "https://www.oneleet.com/"

  livecheck do
    url "https://downloads.oneleet.com/agent/macos/beta-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Oneleet.app"

  zap trash: "~/Library/Application Support/Oneleet Agent"
end
