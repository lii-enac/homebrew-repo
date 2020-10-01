# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libivy < Formula
  desc ""
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/3.15.3.zip"
  sha256 "e988b3ee12dd8af2ed8c5da5964b36b3987586ce3bb903e2b17c654f97399443"

  depends_on "glib"
  depends_on 'pkg-config'

  def install
    cd "src" do
      ENV.deparallelize
      system "make", "-j",  "-f",  "Makefile.osx", "static-libs", "shared-libs"
      system "make", "-j",  "-f",  "Makefile.osx", "install", "PREFIX=#{prefix}"
    end
  end
end