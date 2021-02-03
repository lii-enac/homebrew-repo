# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.15.0.zip"
  sha256 "b308dcd8308a74f153c60524f7392b2d2cd588ce51c6b4b5da066a8d0a826ddd"
  
  depends_on "djnn-cpp" => "1.15.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install_brew", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end