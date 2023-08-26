class PgYregress < Formula
  desc "Regression testing for Postgres"
  homepage "https://docs.omnigres.org/pg_yregress/usage/"
  license "Apache-2.0"
  head "https://github.com/omnigres/omnigres.git"
  url "https://github.com/omnigres/omnigres/archive/refs/tags/pg_yregress/v0.1.0.tar.gz"
  sha256 "31971def69a2c27de80fc908d2f0002e3eb62e8cea2f56b035ad9a4dbf59c650"
  version "0.1.0"

  depends_on "cmake" => :build
  depends_on "libpq" => :build
  depends_on "postgresql@15" => :optional

  def install
    system "cmake", "-S", "pg_yregress", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

end
