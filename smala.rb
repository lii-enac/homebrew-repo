# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.18.0.zip"
  sha256 "753e19e919a7c6c05c87f82c1cb10958c5af795c176cb2794d25987c070552ce"
  
  depends_on "djnn-cpp" => "1.18.0"
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