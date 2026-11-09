cask "covee" do
  version "0.1.2"
  sha256 "9191781942c1e2e50a16350683bb04d538d7e29a00b806e15fcbbade527a12ab"

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
