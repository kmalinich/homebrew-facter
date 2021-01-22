class CppHocon < Formula
  desc "A C++ port of the Typesafe Config library."
  homepage "https://github.com/puppetlabs/cpp-hocon"
  head "https://github.com/puppetlabs/cpp-hocon.git", branch: "main"

  depends_on "cmake"      => :build
  depends_on "leatherman" => :build

  depends_on "boost"
  depends_on "yaml-cpp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
