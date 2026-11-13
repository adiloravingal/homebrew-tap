class Checkyospeed < Formula
  desc "Terminal network monitor with per-app/per-tab bandwidth and slowdown diagnosis"
  homepage "https://github.com/adiloravingal/checkyospeed"
  url "https://github.com/adiloravingal/checkyospeed/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3b84e3e20e56ae8ddecd52970fccc0f9fc493596c1b99e5f5b9493706c1c4e1d"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_predicate bin/"checkyospeed", :executable?
  end
end
