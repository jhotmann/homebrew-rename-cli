require "language/node"

class RenameCli < Formula
  desc "A command line utility for renaming files"
  homepage "https://github.com/jhotmann/node-rename-cli#readme"
  url "https://registry.npmjs.org/rename-cli/-/rename-cli-7.0.1.tgz"
  version "7.0.1"
  sha256 "8711b3130da9ce9cb59c98115d46b9e7a1ec189860fb09f4c145c607b7337cbc"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end