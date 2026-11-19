class Covee < Formula
  desc "Build and run your own private network"
  homepage "https://covee.io"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.3/covee_0.1.3_darwin_arm64.tar.gz"
      sha256 "b672d7f72ae3589c6f30b2e37005ea4b21fb8cfeedae7499e4afdb742bac685f"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.3/covee_0.1.3_darwin_amd64.tar.gz"
      sha256 "1e7907c0c4c46cb82cd62b3a27ee23398f98b2e5ef884bc9a6d18b414d875e90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/covee-io/covee/releases/download/v0.1.3/covee_0.1.3_linux_arm64.tar.gz"
      sha256 "0c09d882f957b57d3be85230af38812b9f576e837c4cba5e05d1f277f383c950"
    end
    on_intel do
      url "https://github.com/covee-io/covee/releases/download/v0.1.3/covee_0.1.3_linux_amd64.tar.gz"
      sha256 "aa688e9f43e560884769c6f0e89ef5bdfc93117b32151e7612e478f1a552d01a"
    end
  end

  def install
    bin.install "covee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/covee version")
  end
end
