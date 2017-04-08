# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/1.0.3.tar.gz"
  sha256 "de6b3520f4c819d44cb741aaf3d0e291e8cdbe9c06652aff8d5c21d31d5a1b60"


  def install
    system "unset CC; swift build -c release"
    bin.install ".build/release/localizationCommand"
  end

end
