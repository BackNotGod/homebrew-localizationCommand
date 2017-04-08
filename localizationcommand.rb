# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/1.0.2.tar.gz"
  sha256 "9e43ee975dd39131673f63b317f3f1def1f66cd593d81bcdb2f7f404b054d2ee"


  def install
    system "unset CC; swift build -c release"
    bin.install ".build/release/localizationCommand"
  end

end
