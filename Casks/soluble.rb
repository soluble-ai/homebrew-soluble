cask 'soluble' do
  version '0.6.17'
  sha256 '80412e1b122c828304c255a1956a5a93e92723b9ec8de6f8d02d6e6bd594b771'

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
