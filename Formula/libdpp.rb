class Libdpp < Formula
  desc "D++: A C++ Discord API Library for Bots"
  homepage "https://dpp.dev/"
  url "https://github.com/brainboxdotcc/DPP/archive/refs/tags/v10.0.11.tar.gz"
  sha256 "33463292f3030eabf70ab54ff09475945b4d87a9c6e428c712015cba93a1ed96"
  license "Apache-2.0"

  depends_on "cmake" => :build
  depends_on "opus" => :build

  def install
    system "cmake", "-S", ".", "-B", "./build", *std_cmake_args
    system "cmake", "--build", "./build"
    system "cd", "build"
    system "sudo", "make", "install"
  end

  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test d++`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end
