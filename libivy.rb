# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libivy < Formula
  desc ""
  homepage ""
  url "file:///Users/mpoirier/Documents/Git/libivy-3.15.zip"
  sha256 "77ed4b691139dc00e33cd95ea838552333c469cd0400f6cb07f00811591cfee5"

  depends_on "glib"

  def install
    ENV.deparallelize
    system "cd", "trunk/src", ";", "make", "-j",  "-f",  "Makefile.osx", "static-libs", "shared-libs"

    include.install "trunk/src/ivy.h", "trunk/src/ivybind.h", "trunk/src/ivybuffer.h", "trunk/src/ivychannel.h"
    include.install "trunk/src/ivydebug.h", "trunk/src/ivyloop.h", "trunk/src/ivysocket.h", "trunk/src/list.h"
    include.install "trunk/src/timer.h", "trunk/src/version.h", "trunk/src/ivyglibloop.h"
    lib.install "trunk/src/libivy.a", "trunk/src/libivy.dylib", "trunk/src/libglibivy.a", "trunk/src/libglibivy.dylib"
  end
end
