class Covee < Formula
  desc "Build and run your own private network"
  homepage "https://covee.io"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.0/covee_0.1.0_darwin_arm64.tar.gz"
      sha256 "00c85bac960b549b35eecf41862c924e5520f13287d0d1d099440310b382cd94"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.0/covee_0.1.0_darwin_amd64.tar.gz"
      sha256 "d4341e3a97def51823114b8a8dfff5ea09d3f29dfb977746bdd0a003b1952e19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.0/covee_0.1.0_linux_arm64.tar.gz"
      sha256 "fd19c7fb30b7002dbba2c845abcce613a420b95eebd2e5b3f503116495593729"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.0/covee_0.1.0_linux_amd64.tar.gz"
      sha256 "c68586f666da080381caa9222f429ee44a9299c76ea61ded10311e17ee6d4a1c"
    end
  end

  def install
    bin.install "covee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/covee version")
  end
end
