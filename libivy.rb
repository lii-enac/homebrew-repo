# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libivy < Formula
  desc ""
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/3.15.zip"
  sha256 "4daa1e5c4c9da271579ff6d5d164d130a8f41390823775232c2b388fef246f0d"

  depends_on "glib"

  def install
    ENV.deparallelize
    system "cd", "src", ";", "make", "-j",  "-f",  "Makefile.osx", "static-libs", "shared-libs"

    include.install "src/ivy.h", "src/ivybind.h", "src/ivybuffer.h", "src/ivychannel.h"
    include.install "src/ivydebug.h", "src/ivyloop.h", "src/ivysocket.h", "src/list.h"
    include.install "src/timer.h", "src/version.h", "src/ivyglibloop.h"
    lib.install "src/libivy.a", "src/libivy.dylib", "src/libglibivy.a", "src/libglibivy.dylib"
  end
end
