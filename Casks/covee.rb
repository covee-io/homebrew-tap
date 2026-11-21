cask "covee" do
  version "0.1.4"
  sha256 "2f78f63f80c43ffd0e47eea44642e0eaecf114e37ef21674df7dc40159167959"

  url "https://github.com/covee-io/covee/releases/download/v#{version}/Covee.dmg"
  name "Covee"
  desc "Connect to your own private network"
  homepage "https://covee.io/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Covee.app"

  uninstall quit: "io.covee.macos"

  zap trash: [
    "~/Library/Containers/io.covee.macos",
    "~/Library/Preferences/io.covee.macos.plist",
  ]
end
