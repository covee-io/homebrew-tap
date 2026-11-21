class Covee < Formula
  desc "Build and run your own private network"
  homepage "https://covee.io"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.4/covee_0.1.4_darwin_arm64.tar.gz"
      sha256 "cdb59dc547d9f21e9c01a3e9ff4d3bfa4841474b63a5d292ecbaf7034bce1609"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.4/covee_0.1.4_darwin_amd64.tar.gz"
      sha256 "aba0e0d233cae2be061acba32838b22b284e14385ac747d3e635cffa2d36d9bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.4/covee_0.1.4_linux_arm64.tar.gz"
      sha256 "b2c83a11a6fbd0377738aa99f4f9949b4dc147dec45d08fea1f8a3d693600abb"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.4/covee_0.1.4_linux_amd64.tar.gz"
      sha256 "b9a1e9f5d258e36f5450da9f12f6d3eda89561e4bd6285c1d5bdb7e3650bbd64"
    end
  end

  def install
    bin.install "covee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/covee version")
  end
end
