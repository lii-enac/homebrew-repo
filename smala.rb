class Smala < Formula
  desc "Compiler for the Smala language"
  homepage "https://github.com/lii-enac/smala"
  url "https://github.com/lii-enac/smala/archive/1.21.0.tar.gz"
  sha256 "c8becd2639a2f8730f070b47cec6195195bd14324ec15ca8a0c316d3c4d3ea57"

  depends_on "bison"
  depends_on "djnn-cpp"
  depends_on "flex"

  def install
    ENV.deparallelize
    system "make", "-j8", "install_brew", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
