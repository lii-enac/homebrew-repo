class DjnnCpp < Formula
  desc "C++ library for interactive software programming"
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.20.0.tar.gz"
  sha256 "175d8a298ffb5a40a49d7c594f9ffdb3a6e956a8406cab0c1fb4478504cfd6fa"

  depends_on "bison"
  depends_on "curl"
  depends_on "expat"
  depends_on "flex"
  depends_on "libivy"
  depends_on "qt@5"

  def install
    ENV.deparallelize
    ENV["CXX"] = ENV.cxx.to_s
    system "make", "-j8", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
