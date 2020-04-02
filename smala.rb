# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.9.0.zip"
  sha256 "406ad54a87451a71d926d489b9ca0077a54fc5455b10543797b38e21ba1e135e"
  
  depends_on "djnn-cpp" => "1.10.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end