# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.17.0.zip"
  sha256 "46859ce5acc58d0802842c0f361f880302886bd61628e41dfe0bcb5ae8538c31"
  
  depends_on "djnn-cpp" => "1.17.0"
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