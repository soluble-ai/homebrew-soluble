cask 'soluble' do
  version '0.3.4'
  sha256 '1d34690243da0f7148baf18a9132307b7d7414f86739a43abcf57ab4d93c0e4e'

  # storage.googleapis.com/storage/v1/b/soluble-public/o/cli was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/storage/v1/b/soluble-public/o/cli%2Fv#{version}%2Fsoluble_v#{version}_darwin_amd64.tar.gz?alt=media"
  name 'Soluble Command Line Interface'
  homepage 'https://www.soluble.ai/'

  binary 'soluble'

  caveats %(
MacOS Catalina will refuse to run the CLI the first time.  Click Cancel on
the dialog, then open Security & Privacy in System Prefrences, and click the
Allow Anyway button on the General tab.  Catalina will pop up a dialog on
the 2nd run, hit OK.
  ) 
end
