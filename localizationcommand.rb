# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/1.1.1.tar.gz"
  sha256 "f9f5be9793601783f252a8705d246e51357ec11246a4e7b075616fa25e5b813a"


  def install
    system "unset CC; swift build --disable-sandbox -c release -Xswiftc -static-stdlib"
    bin.install ".build/release/localizationCommand"
  end

end
