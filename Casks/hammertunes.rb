cask "hammertunes" do
  version "0.1.4"
  sha256 "8e002e011bcb9c48d2978c2ef8e0c1acba0d6eb553e7b5420756f3003ba878e2"

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
  EOS
end
