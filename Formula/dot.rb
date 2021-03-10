class Dot < Formula
  desc "Dotfile Manager"
  homepage "https://github.com/ysdexlic/dot"
  url "https://github.com/ysdexlic/dot/archive/v0.1.5.tar.gz"
  sha256 "d3df407b4326f6b6e57099e55deb27aff4c0998d2a441251fd3a11a9f8a4456f"
  license "MIT"
  head "https://github.com/ysdexlic/dot.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dot", "-V"
  end
end
