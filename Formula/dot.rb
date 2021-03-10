class Dot < Formula
  desc "Dotfile Manager"
  homepage "https://github.com/ysdexlic/dot"
  url "https://github.com/ysdexlic/dot/archive/v0.1.2.tar.gz"
  sha256 "75fc908870d9d7802819580449f0b8d814ccadab0c1a37e5cd8dae11b342cc8f"
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
