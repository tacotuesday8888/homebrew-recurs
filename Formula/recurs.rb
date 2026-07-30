class Recurs < Formula
  desc "Coding-agent harness with durable, bounded team orchestration"
  homepage "https://github.com/tacotuesday8888/recurs"
  url "https://registry.npmjs.org/recurs/-/recurs-0.1.0-alpha.4.tgz"
  version "0.1.0-alpha.4"
  sha256 "743bf4389c54ac302a72990b7e856ecd86cd38c5d0389128a6c16428f17e99cf"
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
