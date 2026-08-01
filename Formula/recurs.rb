class Recurs < Formula
  desc "Coding-agent harness with durable, bounded team orchestration"
  homepage "https://github.com/tacotuesday8888/recurs"
  url "https://registry.npmjs.org/recurs/-/recurs-0.1.0-alpha.5.tgz"
  version "0.1.0-alpha.5"
  sha256 "b5db9613a3f77cea97176b5b2df89523ef914bd4a29a17f856a8a8fe9b284598"
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
