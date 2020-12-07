# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.14.0.zip"
  sha256 "37a167ba49cdd5007d96571a9607e0338e09b705ed9088affa8a4f7cc0707f13"

  depends_on "qt" => "5.15"
  depends_on "flex" => "2.6.4"
  depends_on "boost" => "1.74.0"
  depends_on "libivy" => "3.15.3"


  def install
    ENV.deparallelize
    ENV['CXX'] = "c++" 
    system "make", "-j6", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end