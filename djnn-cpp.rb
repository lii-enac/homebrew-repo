# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.17.0.zip"
  sha256 "2dde3d05d7c381e280aacd59099eec9842678561cb335833465b815b3a2c9178"

  depends_on "qt@5" => "5.15.2"
  depends_on "bison" => "3.5.7"
  depends_on "flex" => "2.6.4"
  depends_on "libivy" => "3.15"
  depends_on "expat"
  depends_on "curl"


  def install
    ENV.deparallelize
    ENV['CXX'] = "c++" 
    system "make", "-j6", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end