cask "covee" do
  version "0.1.1"
  sha256 "00759c1cf684afb7a84360252c4b802564507ab35dcbd210e3fa506d4a8b2df7"

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
