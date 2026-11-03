class Libivy < Formula
  desc "Library for bus Ivy (ENAC)"
  homepage "https://github.com/lii-enac/libivy"
  url "https://github.com/lii-enac/libivy/archive/refs/tags/3.16.1.tar.gz"
  sha256 "b3750a5450d33582b07bb644540059b49890f4b65f2e113342e6aff7b393d72e"
  license "LGPL-2.0-or-later"
  head "https://github.com/lii-enac/libivy.git", branch: "master"

  depends_on "pcre2"
  depends_on "pkgconf"

  def install
    system "make", "-j8", "static-libs", "shared-libs", "PREFIX=#{prefix}"
    system "make", "-j8", "install", "PREFIX=#{prefix}"
  end

  test do
    system "pkgconf", "--atleast-version=3.16.0", "libivy"
    (testpath/"test.c").write <<~C
      #include <Ivy/ivybind.h>

      int main(void) {
        int offset;
        const char *error;
        IvyBinding binding = IvyBindingCompile("^ivy (.+)$", &offset, &error);
        if (!binding) return 1;
        int matches = IvyBindingExec(binding, "ivy ready");
        IvyBindingFree(binding);
        return matches == 2 ? 0 : 1;
      }
    C
    system ENV.cc, "test.c", "-I#{include}", "-L#{lib}", "-livy", "-o", "test"
    system "./test"
  end
end
