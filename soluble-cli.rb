class SolubleCli < Formula
  desc "Command-line interface for Soluble"
  homepage "https://soluble.ai"
  url "https://github.com/soluble-ai/soluble-cli/archive/v0.4.6.tar.gz"
  sha256 "86b2df77e1fb535021a43e1eb69f34ab7710530cb4ab564d06b5cecb7eb10deb"

  depends_on "go@1.13" => :build

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
