# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.13.0.zip"
  sha256 "ddb7411bf41ff452d80497124d693a74a4ef92f76d7505ba6fa13eeb908a941c"
  
  depends_on "djnn-cpp" => "1.13.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end