class Dot < Formula
  desc "Dotfile Manager"
  homepage "https://github.com/ysdexlic/dot"
  url "https://github.com/ysdexlic/dot/archive/v0.1.3.tar.gz"
  sha256 "a0160dab0cd5fa12a6bd9b65d22179c991e8f416e521e9a12d7cf9563358221d"
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
