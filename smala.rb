# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.10.1.zip"
  sha256 "c2cc274d36851547e77349fd5a5436ec4d86e2a64e5d5244185421b211c44b5d"
  
  depends_on "djnn-cpp" => "1.11.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end