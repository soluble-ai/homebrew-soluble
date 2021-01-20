class SolubleCli < Formula
  desc "Command-line interface for Soluble"
  homepage "https://soluble.ai"
  url "https://github.com/soluble-ai/soluble-cli/archive/v0.4.37.tar.gz"
  sha256 "bf7df215f1ad2981fda84011e4e4fc55a21d5e910cb33e0796211ea28a06f267"

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
