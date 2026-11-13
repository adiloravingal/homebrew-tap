class Checkyospeed < Formula
  desc "Terminal network monitor with per-app/per-tab bandwidth and slowdown diagnosis"
  homepage "https://github.com/adiloravingal/checkyospeed"
  url "https://github.com/adiloravingal/checkyospeed/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "baa706ee20ca4ca911368a8953b5e7031e7ab19f43225d6d9c9a9196c8a1b782"
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
