# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libivy < Formula
  desc ""
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/3.15.7.zip"
  sha256 "0d43e56769f1bcac02466b34dc4f94675208a82ce16fd31a67c82e4451c997d1"

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