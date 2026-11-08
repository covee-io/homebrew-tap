class Covee < Formula
  desc "Build and run your own private network"
  homepage "https://covee.io"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.1/covee_0.1.1_darwin_arm64.tar.gz"
      sha256 "c8c9a8ad07c539fc695b3af48bf701e7fdd131deed2fa5521cfcf0b22032f02b"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.1/covee_0.1.1_darwin_amd64.tar.gz"
      sha256 "8e4eadec2489ab7ff472e45ab6db453ae5cea2ac1959809e63d6fb35893b9c64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.1/covee_0.1.1_linux_arm64.tar.gz"
      sha256 "3fe281fdaad0ab3d7e636601834bc87b2ac90b6704394da45a82b1bf4d848a70"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.1/covee_0.1.1_linux_amd64.tar.gz"
      sha256 "aa4f58e55dc2ceffa7626279d9669fadadfff83a5c4f7020d915ba8445306eae"
    end
  end

  def install
    bin.install "covee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/covee version")
  end
end
