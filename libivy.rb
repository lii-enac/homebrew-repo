# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libivy < Formula
  desc ""
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/3.15.6.zip"
  sha256 "5c341ab1debae68f615884fe19237a0c909cb8609710c8472e46221a363a2314"

  depends_on "pcre"
  depends_on 'pkg-config'

  def install
    cd "src" do
      ENV.deparallelize
      system "make", "-j",  "-f",  "Makefile.osx", "static-libs", "shared-libs"
      system "make", "-j",  "-f",  "Makefile.osx", "install", "PREFIX=#{prefix}"
    end
  end
end