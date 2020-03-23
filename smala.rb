# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smala < Formula
  desc "Compiler for the Smala language"
  homepage ""
  url "https://github.com/lii-enac/smala/archive/1.8.0.zip"
  sha256 "db2b8b2089c50ece8f11dffd0306fa4c2a92abb7d3e40ac5508dfe34a1a84b74"

  depends_on "djnn-cpp" => "1.9.0"
  depends_on "bison" => "3.5.3"

  def install
    ENV.deparallelize

    system "make", "-j"
    #system "make", "-j", "cookbook_apps"

    bin.install "build/smalac"
    #share.install Dir["build/*/*/*_app", "build/*/*/*/*_app"]
  end

  test do
    system "false"
  end
end
