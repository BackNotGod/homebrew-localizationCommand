# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/0.0.2.tar.gz"
  sha256 "9844014a68e0805f0feb21ca214838b229571338d3483741c1e1942994e6ad06"

  depends_on :xcode => ["8.0", :build]

  def install
      xcodebuild "-project",
      "localizationCommand.xcodeproj",
      "-scheme", "localizationCommand",
      "-configuration","release",
      "CODE_SIGN_IDENTITY=",
      "SYMROOT=build", "OBJROOT=build"
      bin.install "build/Release/localizationCommand"
  end

end
