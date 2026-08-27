class Smala < Formula
  desc "Compiler for the Smala language"
  homepage "https://github.com/lii-enac/smala"
  url "https://github.com/lii-enac/smala/archive/1.23.0.tar.gz"
  sha256 "8c9bff793bd18404e14a6fc868c86590d114fb55e3bdd89dbecb38effb546bd1"

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
