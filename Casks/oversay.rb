cask "oversay" do
  version "0.5.0"
  sha256 "53e51c40d9a2f9f2ea0cc52fbb6497cf76bbf6fe38115c5b1ff65ecf06d0da20"

  url "https://github.com/oversayapp/oversay/releases/download/v#{version}/Oversay_#{version}_universal.dmg"
  name "Oversay"
  desc "On-screen flashcards for calls"
  homepage "https://oversay.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Oversay.app"

  # Decks and notes in ~/Documents/Oversay are the user's own files and are kept.
  zap trash: [
    "~/Library/Application Support/app.oversay",
    "~/Library/Caches/app.oversay",
    "~/Library/HTTPStorages/app.oversay",
    "~/Library/Logs/app.oversay",
    "~/Library/Preferences/app.oversay.plist",
    "~/Library/Saved Application State/app.oversay.savedState",
    "~/Library/WebKit/app.oversay",
  ]
end
