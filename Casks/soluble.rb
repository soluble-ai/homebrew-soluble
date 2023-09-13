cask 'soluble' do
  version '0.6.8'
  sha256 'f9910289410506988ea9e89f51c89d4cd0808237fd38402f9e8d7d9b9bc93f61'

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
