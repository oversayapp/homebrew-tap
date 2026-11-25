cask "oversay" do
  version "0.6.0"
  sha256 "d77480e513a518cd94a7278899d61bf2cb279470ddccadaab4bad7828413104d"

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
