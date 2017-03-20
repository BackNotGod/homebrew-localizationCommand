# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/0.0.2.tar.gz"
  sha256 "f0dcb180c26ac7eae97512f4c794190fe26f940214fe2b748be980e12645ddd9"

  depends_on :xcode => ["8.0", :build]
  depends_on :swift => ["3.0"]

  def install
      ENV.deparallelize
      swift "build"
      xcodebuild "-project",
      "localizationCommand.xcodeproj",
      "-scheme", "localizationCommand",
      "-configuration","release",
      "CODE_SIGN_IDENTITY=",
      "SYMROOT=build", "OBJROOT=build"
      bin.install "build/Release/localizationCommand"
  end

end
