class PgYregress < Formula
  desc "Regression testing for Postgres"
  homepage "https://docs.omnigres.org/pg_yregress/usage/"
  license "Apache-2.0"
  head "https://github.com/omnigres/omnigres.git"
  url "https://github.com/omnigres/omnigres/archive/refs/tags/pg_yregress/v0.2.0.tar.gz"
  sha256 "68e93e6d66ba32ade3f9d17593deea1723a35a5bcca96c320dfe3d7653637e40"
  version "0.2.0"

  depends_on "cmake" => :build
  depends_on "libpq" => :build
  depends_on "postgresql@15" => :optional

  def install
    system "cmake", "-S", "pg_yregress", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

end
