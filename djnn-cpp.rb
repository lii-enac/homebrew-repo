class DjnnCpp < Formula
  desc "C++ library for interactive software programming"
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.23.0.tar.gz"
  sha256 "4025b62d6eb8e71df48ca9c0fed01a0d0efcaf40f0c1281e9332ca27813e6569"

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
