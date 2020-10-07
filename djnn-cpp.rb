# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.13.0.zip"
  sha256 "12c7afc3f6bc744611e452dda24b268a21f36c9ef2cbf2541f77339bbc6477ad"

  depends_on "qt" => "5.15"
  depends_on "flex" => "2.6.4"
  depends_on "libivy" => "3.15.3"

  def install
    ENV.deparallelize
    ENV['CXX'] = "c++" 
    system "make", "-j6", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end