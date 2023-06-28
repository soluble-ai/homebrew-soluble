cask 'soluble' do
  version '0.5.64'
  sha256 'fe2ed6cbb12a717a15a4e0a2d62057000d06611ec9e93499074db059d435b1a2'

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
