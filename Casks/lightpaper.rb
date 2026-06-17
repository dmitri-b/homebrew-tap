cask "lightpaper" do
  version "0.1.12"
  sha256 "0fb52097fa57bed60aa83988254df22436c090a90746d4e2d721e7cb685c142e"

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
