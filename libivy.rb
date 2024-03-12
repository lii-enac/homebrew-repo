class Libivy < Formula
  desc "Library for bus Ivy (ENAC)"
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/3.15.8.tar.gz"
  sha256 "78754acfb1ea67e6748d7e3e9bb2e554fc1abcefe78edfde270bdae56599f288"

  depends_on "pcre"
  depends_on "pkg-config"

  def install
    cd "src" do
      ENV.deparallelize
      system "make", "-j",  "-f",  "Makefile.osx", "static-libs", "shared-libs"
      system "make", "-j",  "-f",  "Makefile.osx", "install", "PREFIX=#{prefix}"
    end
  end
end
