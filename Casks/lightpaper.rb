cask "lightpaper" do
  version "0.1.16"
  sha256 "c7ff70e24563ed731bbfb0954aee2df01ed79eeae736176d9116133b12651fca"

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
