# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.11.0.zip"
  sha256 "3c403b9d8f7c78ef821c59840030393f34286294a8eb163ae52939af94bb3600"

  depends_on "qt" => "5.14"
  depends_on "flex" => "2.6.4"
  depends_on "libivy" => "3.15"

  def install
    ENV.deparallelize
    ENV['CXX'] = "c++" 
    system "make", "-j4", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end