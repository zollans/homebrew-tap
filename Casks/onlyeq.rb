cask "onlyeq" do
  version "1.3.0"
  sha256 "8641c059c66d7c46b5495e6c8f3e174c24cfd2112f91a4be3cb94042d7d8c690"

  url "https://github.com/zollans/OnlyEQ/releases/download/v#{version}/OnlyEQ.app.zip"
  name "OnlyEQ"
  desc "System-wide parametric EQ using Core Audio process taps"
  homepage "https://github.com/zollans/OnlyEQ"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "OnlyEQ.app"

  uninstall quit: "com.onlyeq.app"

  zap trash: [
    "~/Library/Application Support/OnlyEQ",
    "~/Library/Caches/com.onlyeq.app",
    "~/Library/HTTPStorages/com.onlyeq.app",
    "~/Library/Logs/OnlyEQ.log",
    "~/Library/Preferences/com.onlyeq.app.plist",
  ]

  caveats <<~EOS
    OnlyEQ needs macOS 14.4 or later for Core Audio process taps.

    OnlyEQ is not notarized. On first launch, open System Settings >
    Privacy & Security and click "Open Anyway" for OnlyEQ.
  EOS
end
