class SolubleCli < Formula
  desc "Command-line interface for Soluble"
  homepage "https://soluble.ai"
  url "https://github.com/soluble-ai/soluble-cli/archive/v0.4.42.tar.gz"
  sha256 "ca132e9813c2d7c4fe1ca13155d63f11ee055fa0ae3c554f9b4d42f55cb9ccc1"

  depends_on "go@1.15" => :build

  def install
    system "go", "generate"
    system "go", "build", "-o", "soluble", "-tags", "ci,osusergo,netgo",
      "-ldflags=-X github.com/soluble-ai/soluble-cli/pkg/version.Version=#{version}"\
      " -X github.com/soluble-ai/soluble-cli/pkg/version.BuildTime=#{Time.now.iso8601}"
    bin.install "soluble"
  end

  test do
    system "#{bin}/soluble", "version"
  end
end
