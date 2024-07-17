class DjnnCpp < Formula
  desc "C++ library for interactive software programming"
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.21.0.tar.gz"
  sha256 "fe4361f3a906fb240317b3acdd3461fc01f6ed2fb106e73a6e8f2b971ade2a33"

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
