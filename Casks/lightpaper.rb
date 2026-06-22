cask "lightpaper" do
  version "0.1.14"
  sha256 "c879e964384c2c3947df7abec81ce1ed8e5753e07efe618d494413ceb8211aca"

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
