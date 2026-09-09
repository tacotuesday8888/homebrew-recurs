class Recurs < Formula
  desc "Coding-agent harness with durable, bounded team orchestration"
  homepage "https://github.com/tacotuesday8888/recurs"
  url "https://registry.npmjs.org/recurs/-/recurs-0.1.0-alpha.10.tgz"
  version "0.1.0-alpha.10"
  sha256 "f6e0572f2539b0f8d4b94214816f2926af05f4f82c07a20f3ee07d187fdf3c67"
  license "Apache-2.0"

  depends_on "node"
  depends_on "ripgrep"

  on_linux do
    depends_on "bubblewrap"
  end

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Recurs coding-agent harness", shell_output("#{bin}/recurs --help")
  end
end
