cask "mymonero" do
  version "1.1.16"
  sha256 "0cdf6a4e4ab393e9594140210193740b0fdfaddc7ed1ff600fb35e129836ccb8"

  # github.com/mymonero/mymonero-app-js/ was verified as official when first introduced to the cask
  url "https://github.com/mymonero/mymonero-app-js/releases/download/v#{version}/MyMonero-#{version}.dmg"
  appcast "https://github.com/mymonero/mymonero-app-js/releases.atom"
  name "MyMonero"
  desc "Wallet for the Monero cryptocurrency"
  homepage "https://mymonero.com/"

  app "MyMonero.app"

  zap trash: [
    "~/Library/Application Support/MyMonero",
    "~/Library/Saved Application State/com.mymonero.mymonero-desktop.savedState",
    "~/Library/Preferences/com.mymonero.mymonero-desktop.plist",
    "~/Library/Logs/MyMonero",
  ]
end
