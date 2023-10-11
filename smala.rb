class Smala < Formula
  desc "Compiler for the Smala language"
  homepage "https://github.com/lii-enac/smala"
  url "https://github.com/lii-enac/smala/archive/1.20.0.tar.gz"
  sha256 "7d6d61cee9998454248b26ea155728f8f6736d6cdb912b9cb53f1c334dd67c50"

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
