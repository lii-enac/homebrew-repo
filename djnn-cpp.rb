# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DjnnCpp < Formula
  desc "C++ library for interactive software programming "
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.9.0.zip"
  sha256 "bc7f616a87af189fdb652cb64f871362bd69cd10a2f2c280d980cbf6c79d0db8"

  depends_on "qt" => "5.14"
  depends_on "flex" => "2.6.4"
  depends_on "libivy" => "3.15"

  def install
    ENV.deparallelize  
    system "make", "-j"

    include.install Dir["build/include/*"]
    lib.install Dir["build/*.dylib"]

  end

  test do
    system "false"
  end
end
