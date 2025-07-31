class Smala < Formula
  desc "Compiler for the Smala language"
  homepage "https://github.com/lii-enac/smala"
  url "https://github.com/lii-enac/smala/archive/1.22.0.tar.gz"
  sha256 "1ab3cdf761b726cd3caf5335f65736b66a9133b13f159d7e647567f80697941d"

  depends_on "bison"
  depends_on "djnn-cpp"
  depends_on "flex"

  def install
    ENV.deparallelize
    ENV["CXX"] = ENV.cxx.to_s
    system "make", "-j8", "install_brew", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
