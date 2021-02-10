class Libwhereami < Formula
  desc "libwhereami detects virtualization environments."
  homepage "https://github.com/puppetlabs/libwhereami"
  head "https://github.com/puppetlabs/libwhereami.git", branch: "main"

  depends_on "cmake"      => :build
  depends_on "leatherman" => :build

  depends_on "boost"
  depends_on "yaml-cpp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
