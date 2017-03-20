# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Localizationcommand < Formula
  desc "Command Line for iOS app of localization(support '*.m','*.swift')"
  homepage "https://github.com/BackNotGod/localizationCommand"
  url "https://github.com/BackNotGod/localizationCommand/archive/0.0.1.tar.gz"
  sha256 "ae296781e372a85ea637c5cfc1cd5ef4602f397ca24a572ab6d41a2205bfae8c"

  # depends_on "cmake" => :build

  def install
     ENV.deparallelize  # if your formula fails when building in parallel
     system "./configure", "--prefix=#{prefix}"
     system "make", "install"
  end

end
