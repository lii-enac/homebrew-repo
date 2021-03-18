# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.15.0.zip"
  sha256 "bc3a37ad42e6b6201f01c1672b1ac43c04b2435dc4201e12e19d1c63e3f4a91c"

  depends_on "qt@5" => "5.15.2"
  depends_on "bison" => "3.5.7"
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