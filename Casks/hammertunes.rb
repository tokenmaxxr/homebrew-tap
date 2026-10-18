cask "hammertunes" do
  version "0.1.5"
  sha256 "cf0d575ad015127d2f0241e39afcb1fa6de7bd7d5198df0660e7b1dc7c69cfe2"

  url "https://github.com/tokenmaxxr/Hammertunes.spoon/releases/download/v#{version}/Hammertunes.spoon.zip"
  name "Hammertunes"
  desc "Menubar now-playing pill for Hammerspoon - Spotify and Apple Music (beta)"
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

    After upgrading, reload Hammerspoon via menu bar > Reload Config to load
    the new code.
  EOS
end
