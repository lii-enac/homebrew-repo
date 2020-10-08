# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.13.0.zip"
  sha256 "12643849ea5ecd31de63f1075c1c86721c80afcc6df40d0d5e362c1a35131f3e"
  
  depends_on "djnn-cpp" => "1.13.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j", "install_brew", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end