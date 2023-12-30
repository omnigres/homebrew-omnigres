class PgYregress < Formula
  desc "Regression testing for Postgres"
  homepage "https://docs.omnigres.org/pg_yregress/usage/"
  license "Apache-2.0"
  head "https://github.com/omnigres/omnigres.git"
  url "https://github.com/omnigres/omnigres/archive/refs/tags/pg_yregress/v0.3.0.tar.gz"
  sha256 "d7ef25590eb2cca569404cebf0590d2156ea0e3b4cd3d2a9e414349605639a61"
  version "0.3.0"

  depends_on "cmake" => :build
  depends_on "libpq" => :build
  depends_on "postgresql@16" => :optional

  def install
    system "cmake", "-S", "pg_yregress", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

end
