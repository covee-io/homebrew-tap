class Covee < Formula
  desc "Build and run your own private network"
  homepage "https://covee.io"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.2/covee_0.1.2_darwin_arm64.tar.gz"
      sha256 "cdbacd4da6dfdaf821603c93deb3293bdf02a3f2a8caddb420d361ed63103986"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.2/covee_0.1.2_darwin_amd64.tar.gz"
      sha256 "af8198c8bfffc0ca2c9f6a92956a454a735a3cbb0c7bd983131a4f9fb85b9367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.2/covee_0.1.2_linux_arm64.tar.gz"
      sha256 "1b20fa2b963dd48da220d0bc8370a25a7bc74ff3533c38c3949f88bbaf10046f"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.2/covee_0.1.2_linux_amd64.tar.gz"
      sha256 "2b3c13dc92c62048b1060ec0095d86c7061e64e64b6f684fabcefc100184c02d"
    end
  end

  def install
    bin.install "covee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/covee version")
  end
end
