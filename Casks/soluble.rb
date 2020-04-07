cask 'soluble' do
  version '0.3.7'
  sha256 '4c76d5a838512da1f99a6d77c492f3c8eb217634df62edc30dbeb960ae3e7a02'

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
