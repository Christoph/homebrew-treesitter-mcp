class TreesitterMcp < Formula
  desc "AST-first MCP server for token-efficient code analysis"
  homepage "https://github.com/Christoph/treesitter-mcp"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Christoph/treesitter-mcp/releases/download/v0.7.0/treesitter-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "03a710dbabee6ef9c109d407051b609d6e99036ba79ea0af5fefbe56b8eb7075"
    end
    on_intel do
      url "https://github.com/Christoph/treesitter-mcp/releases/download/v0.7.0/treesitter-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "22e8e03bdd3ea9b37304999b6739c86574697591d28dfa84a2ffc238dda9f5d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Christoph/treesitter-mcp/releases/download/v0.7.0/treesitter-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c960aeb0fd26667daea298a980f4c5b2a3e29d45c05cfa2d61c2ce07332caec"
    end
  end

  def install
    bin.install "treesitter-mcp"
  end

  test do
    assert_predicate bin/"treesitter-mcp", :exist?
    assert_predicate bin/"treesitter-mcp", :executable?
  end
end
