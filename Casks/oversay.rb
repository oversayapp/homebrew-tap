cask "oversay" do
  version "0.4.0"
  sha256 "444e6d2a876ee4f1e1ec1e717c7908e8a868006bcc9a730b2bd95e26c8c41b16"

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
