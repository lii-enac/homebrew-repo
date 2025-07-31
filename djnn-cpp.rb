class DjnnCpp < Formula
  desc "C++ library for interactive software programming"
  homepage "https://github.com/lii-enac/djnn-cpp"
  url "https://github.com/lii-enac/djnn-cpp/archive/1.22.0.tar.gz"
  sha256 "e78ba551bc87966b5ebfa6bca73f4d26a269cc5bfef9cf95b810e94a078cb9ff"

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
