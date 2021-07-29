# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.16.0.zip"
  sha256 "9b4a238bb0fb944821a35dbcb0b5f4a3c55ae19080b9bcbcee04fa03c99fe30c"
  
  depends_on "djnn-cpp" => "1.16.0"
  depends_on "bison" => "3.5.3"
  depends_on "flex"

  def install
    ENV.deparallelize

    system "make", "-j", "install_brew", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end