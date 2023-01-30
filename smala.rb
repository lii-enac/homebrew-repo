# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.19.0.zip"
  sha256 "ae49c919cd60a8f081a051b052f9dc4158b12b115114910933c6faa43a727d68"
  
  depends_on "djnn-cpp" => "1.19.0"
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