cask "imazing" do
  version "3.0.2,21053"
  sha256 "e2c78a424a3eb1b52527d49c38b4122cbe2b5e256b41286198a609cfb4e95cda"

  url "https://downloads.imazing.com/mac/iMazing/#{version.csv.first}.#{version.csv.second}/iMazing_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing"
  desc "iPhone management application"
  homepage "https://imazing.com/"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazing#{version.major}Mac.xml"
    strategy :sparkle
  end

  auto_updates true

  app "iMazing.app"

  uninstall quit:       [
              "com.DigiDNA.iMazing#{version.csv.first}.#{version.csv.second}Mac",
              "com.DigiDNA.iMazing#{version.csv.first}.#{version.csv.second}Mac.Mini",
            ],
            login_item: "iMazing Mini"

  zap trash: [
    "/Users/Shared/iMazing Mini",
    "/Users/Shared/iMazing",
    "~/Library/Application Support/iMazing Mini",
    "~/Library/Application Support/iMazing",
    "~/Library/Application Support/MobileSync/Backup/iMazing.Versions",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/iMazing",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.plist",
  ]
end
