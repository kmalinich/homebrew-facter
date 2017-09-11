class Leatherman < Formula
  desc "A collection of C++ and CMake utility libraries."
  homepage "https://github.com/puppetlabs/leatherman"
  head "https://github.com/puppetlabs/leatherman.git"

  depends_on "boost"
  depends_on "cmake" => :build
  depends_on "yaml-cpp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
