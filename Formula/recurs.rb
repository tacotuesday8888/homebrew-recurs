class Recurs < Formula
  desc "Coding-agent harness with durable, bounded team orchestration"
  homepage "https://github.com/tacotuesday8888/recurs"
  url "https://registry.npmjs.org/recurs/-/recurs-0.1.0-alpha.6.tgz"
  version "0.1.0-alpha.6"
  sha256 "a7e5e93a7b05ba37366036633996463aae7c758e358eb7e77fecfe86ca8086cf"
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
