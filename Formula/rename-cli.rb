require "language/node"

class RenameCli < Formula
  desc "A command line utility for renaming files"
  homepage "https://github.com/jhotmann/node-rename-cli#readme"
  url "https://registry.npmjs.org/rename-cli/-/rename-cli-7.0.2.tgz"
  version "7.0.2"
  sha256 "9ff0d3909ae1d91f6b6ad260075c47194197f7b24268e063f5cc52e836b44d66"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
