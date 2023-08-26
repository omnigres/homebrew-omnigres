class PgYregress < Formula
  desc "regiression testing for Postgres"
  homepage "https://docs.omnigres.org/pg_yregress/usage/"
  license "Apache-2.0"
  head "https://github.com/omnigres/omnigres.git"
  url "https://github.com/omnigres/omnigres/archive/refs/tags/pg_yregress/v0.1.tar.gz"
  sha256 "66c8e25913117235af89c38b1e14ad58c758434f4bf03b16be411678b27e72bd"
  version "0.1"

  depends_on "cmake" => :build
  depends_on "libpq" => :build
  depends_on "postgresql@15" => :optional

  def install
    system "cmake", "-S", "pg_yregress", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

end
