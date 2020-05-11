require "language/node"

class RenameCli < Formula
  desc "A command line utility for renaming files"
  homepage "https://github.com/jhotmann/node-rename-cli#readme"
  url "https://registry.npmjs.org/rename-cli/-/rename-cli-6.2.1.tgz"
  version "6.2.1"
  sha256 "afa0ef5145e1a9015a826237ca747b1446203fcd3b39a4a67ad180ed37084f2f"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end