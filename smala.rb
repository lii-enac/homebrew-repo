# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.14.0.zip"
  sha256 "a7ce16658b9ed741c34744158c07e85b279f965f90332fe45538f73dc6ea60a1"
  
  depends_on "djnn-cpp" => "1.14.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install_brew", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end