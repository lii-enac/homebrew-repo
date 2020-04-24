# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.10.0.zip"
  sha256 "08a44315f5119fe9e166b024d92a25fae5cd47cb5cf27930415975741e19ddb6"

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