cask "lightpaper" do
  version "0.1.18"
  sha256 "0f5ea9bb6c638928fa5b230a626e2a116d24cf3dcb37ec35ead05f32a7d29810"

  url "https://github.com/dmitri-b/lightpaper/releases/download/v#{version}/Lightpaper.saver.zip"
  name "Lightpaper"
  desc "Lightroom cache mosaic macOS screen saver"
  homepage "https://github.com/dmitri-b/lightpaper"

  depends_on macos: :sonoma

  screen_saver "Lightpaper.saver"

  # macOS caches the loaded screen saver bundle, so after an in-place upgrade
  # the old version keeps activating on idle until these agents are bounced.
  # Both relaunch on demand, so killing them is harmless.
  postflight do
    system_command "/usr/bin/killall", args: ["legacyScreenSaver"], sudo: false
    system_command "/usr/bin/killall", args: ["WallpaperAgent"],    sudo: false
  end

  caveats <<~EOS
    Lightpaper is not notarized. If macOS blocks it, clear the quarantine flag:
      xattr -dr com.apple.quarantine "~/Library/Screen Savers/Lightpaper.saver"

    Then choose Lightpaper in System Settings > Screen Saver.

    If a previously-running version still appears on idle after upgrading,
    log out and back in (or reboot) to force macOS to reload the bundle.
  EOS
end
