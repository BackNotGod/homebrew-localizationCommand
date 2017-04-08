# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/1.0.1.tar.gz"
  sha256 "7b5e2b37aa3a02a91313d136ea06076257a93c2b97e769af7628c00917a58da9"


  def install
    system "unset CC; swift build -c release"
    bin.install ".build/release/localizationCommand"
  end

end
