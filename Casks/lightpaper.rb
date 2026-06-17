cask "lightpaper" do
  version "0.1.10"
  sha256 "fa26e74ac5de9c7509bbc59d24e4742d2970391cbc843b02c96094c6d3157385"

  url "https://github.com/dmitri-b/lightpaper/releases/download/v#{version}/Lightpaper.saver.zip"
  name "Lightpaper"
  desc "Lightroom cache mosaic macOS screen saver"
  homepage "https://github.com/dmitri-b/lightpaper"

  depends_on macos: :sonoma

  screen_saver "Lightpaper.saver"

  caveats <<~EOS
    Lightpaper is not notarized. If macOS blocks it, clear the quarantine flag:
      xattr -dr com.apple.quarantine "~/Library/Screen Savers/Lightpaper.saver"

    Then choose Lightpaper in System Settings > Screen Saver.
  EOS
end
