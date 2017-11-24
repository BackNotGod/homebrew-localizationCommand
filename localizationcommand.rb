# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/2.0.0.tar.gz"
  sha256 "b30ed55fdcac971fb5d92fc6a4c2572f7eec31cd876cb418b37a02dd90a31e16"


  def install
    system "unset CC; swift build --disable-sandbox -c release -Xswiftc -static-stdlib"
    bin.install ".build/release/localizationCommand"
  end

end
