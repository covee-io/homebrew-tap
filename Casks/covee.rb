cask "covee" do
  version "0.1.3"
  sha256 "9c0eb154bb1b580a7ebc889694c8bd3d24e0da30cde87709ec0407b42108b602"

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
