cask "hammertunes" do
  version "0.1.0"
  sha256 "718761fa77daf314868ee4bcbd0961054b7a6fb6e4ad9a81590373666888b5e3"

  url "https://github.com/tokenmaxxr/Hammertunes.spoon/releases/download/v#{version}/Hammertunes.spoon.zip"
  name "Hammertunes"
  desc "Menubar now-playing pill for Hammerspoon - Spotify now, Apple Music planned"
  homepage "https://github.com/tokenmaxxr/Hammertunes.spoon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "hammerspoon"

  artifact "Hammertunes.spoon", target: "#{Dir.home}/.hammerspoon/Spoons/Hammertunes.spoon"

  zap trash: "#{Dir.home}/.hammerspoon/Spoons/Hammertunes.spoon"

  caveats <<~EOS
    Add to your ~/.hammerspoon/init.lua:

      hs.loadSpoon("Hammertunes")
      spoon.Hammertunes:start()

    Homebrew installs are not git checkouts, so the spoon's built-in update
    check stays quiet; update with `brew upgrade --cask hammertunes` instead.
  EOS
end
