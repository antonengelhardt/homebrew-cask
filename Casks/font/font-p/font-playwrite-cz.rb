cask "font-playwrite-cz" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecz/PlaywriteCZ%5Bwght%5D.ttf"
  name "Playwrite CZ"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCZ[wght].ttf"

  # No zap stanza required
end
