cask "onlyeq" do
  version "1.2.7"
  sha256 "cab8e547776ebc008b57a28bfb51bcf16b6169bba80c1da4772ba1d4c32e4d11"

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
