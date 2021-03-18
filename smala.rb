# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.15.0.zip"
  sha256 "e6097750a60fd91a6751e667adf4daa5a431054ec6878fd7b715ebf8e3be1f36"
  
  depends_on "djnn-cpp" => "1.15.0"
  depends_on "bison" => "3.5.3"
  depends_on "flex"

  def install
    ENV.deparallelize

    system "make", "-j", "install_brew", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end