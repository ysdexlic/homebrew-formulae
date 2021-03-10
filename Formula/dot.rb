class Dot < Formula
  desc "Dotfile Manager"
  homepage "https://github.com/ysdexlic/dot"
  url "https://github.com/ysdexlic/dot/archive/v0.1.0.tar.gz"
  sha256 "ff5aafcaa10ef0a46b38f294d3569376072f011b4abfe64c30a15cc5626de489"
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
