class Dot < Formula
  desc "Dotfile Manager"
  homepage "https://github.com/ysdexlic/dot"
  url "https://github.com/ysdexlic/dot/archive/v0.1.4.tar.gz"
  sha256 "b6c70b78df7eb820bdea39244abaa4ebcf8b9dacc4216579abab0f18a153a3ed"
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
