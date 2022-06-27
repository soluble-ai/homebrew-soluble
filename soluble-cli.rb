class SolubleCli < Formula
  desc "Command-line interface for Soluble"
  homepage "https://soluble.ai"
  url "https://github.com/soluble-ai/soluble-cli/archive/v0.5.22.tar.gz"
  sha256 "3294fdb7530a00bef907834b89f0f87cd51fbd037c2e1372b768fa7624d9e2c7"

  depends_on "go@1.17" => :build

  def install
    system "go", "build", "-o", "soluble", "-tags", "ci,osusergo,netgo",
      "-ldflags=-X github.com/soluble-ai/soluble-cli/pkg/version.Version=#{version}"\
      " -X github.com/soluble-ai/soluble-cli/pkg/version.BuildTime=#{Time.now.iso8601}"
    bin.install "soluble"
  end

  test do
    system "#{bin}/soluble", "version"
  end
end
