cask "hammertunes" do
  version "0.1.3"
  sha256 "8f5767306c1410b66abce70d12862afef1f22e454e7da19b5cebdc289d634786"

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
