cask 'soluble' do
  version '0.6.2'
  sha256 '7ec28f3af72a9fd6f0c050d975da42dcc567fdde45538e6064b8617fff33b3f3'

  url "https://github.com/soluble-ai/soluble-cli/releases/download/v#{version}/soluble_v#{version}_darwin_amd64.tar.gz"
  name 'Lacework Soluble Command Line Interface'
  homepage 'https://www.lacework.com/'

  binary 'soluble'

  caveats %(
MacOS Catalina will refuse to run the CLI the first time.  Click Cancel on
the dialog, then open Security & Privacy in System Prefrences, and click the
Allow Anyway button on the General tab.  Catalina will pop up a dialog on
the 2nd run, hit OK.
  ) 
end
