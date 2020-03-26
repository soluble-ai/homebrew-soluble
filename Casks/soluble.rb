cask 'soluble' do
  version '0.3.5'
  sha256 '19fb4d24f3f82de5cddf64b0cd4f23d1519e03c3e180342ef4df3d8e4cdc8358'

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
