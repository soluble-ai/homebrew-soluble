cask 'soluble' do
  version '0.6.10'
  sha256 'ae006db90653670c5d16881d347589dc964315f09e8f7dbedca8f1cda81af181'

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
