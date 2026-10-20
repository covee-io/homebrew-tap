cask "covee" do
  version "0.1.0"
  sha256 "7f782054a14d080a980a3000aace632b2f7e55d567a68e654751c7f4fa1ba61b"

  url "https://github.com/covee-io/covee/releases/download/v#{version}/Covee.dmg"
  name "Covee"
  desc "Connect to your own private network"
  homepage "https://covee.io"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Covee.app"

  uninstall quit: "io.covee.macos"

  zap trash: [
    "~/Library/Containers/io.covee.macos",
    "~/Library/Preferences/io.covee.macos.plist",
  ]
end
