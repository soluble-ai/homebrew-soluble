cask 'soluble' do
  version '0.3.9'
  sha256 '250a2c5f53fd7f25330a1a09cbdf6d639545f205a65b0239391a866d0320ad2c'

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
