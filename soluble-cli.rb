class SolubleCli < Formula
  desc "Command-line interface for Soluble"
  homepage "https://soluble.ai"
  url "https://github.com/soluble-ai/soluble-cli/archive/v0.4.22.tar.gz"
  sha256 "59a79c5620840f45a010548e99cb547b868178da90db5867a1d25dae3cb13203"

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
