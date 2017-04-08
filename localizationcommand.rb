# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/1.0.3.tar.gz"
  sha256 "68e7c9f1344b280d5c6ce27280a2aa2906e201d40f588508eb848aee45a587fb"


  def install
    system "unset CC; swift build -c release"
    bin.install ".build/release/localizationCommand"
  end

end
