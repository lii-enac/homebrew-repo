class Libivy < Formula
  desc "Library for bus Ivy (ENAC)"
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/3.15.7.tar.gz"
  sha256 "c7410dcb62a6fc71f71b5ea536439292fc002182376738eb8bf90212d368b496"

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
