# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.15.0.zip"
  sha256 "678a9be3aa5d0bef0b98ea4607609742c122adf3a40d4b22e5c1ac0f904d4c8e"

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