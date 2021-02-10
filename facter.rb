class Facter < Formula
  desc "Collect and display system facts"
  homepage "https://tickets.puppet.com/browse/FACT"
  head "https://github.com/puppetlabs/facter.git", branch: "main"

  depends_on "cmake"      => :build
  depends_on "cpp-hocon"  => :build
  depends_on "leatherman" => :build

  depends_on "boost"
  depends_on "curl"
  depends_on "openssl"
  depends_on "yaml-cpp"

  def install
    system "cmake", "-DOPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include", "-DOPENSSL_LIBRARY=/usr/local/opt/openssl/lib/libcrypto.dylib", "-DWITHOUT_JRUBY=true", "-DRUBY_LIB_INSTALL=/usr/local/Cellar/facter/4.0.0/lib/ruby/vendor_ruby", ".", *std_cmake_args
    system "make"
    system "make install"
  end

  test do
    system "false"
  end
end
