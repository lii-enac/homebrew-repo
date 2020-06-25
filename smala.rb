# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.11.0.zip"
  sha256 "952d10c22eca723b76bc50f135eb1d9852915eed11bbe2f1ad791f597454cfd1"
  
  depends_on "djnn-cpp" => "1.12.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end