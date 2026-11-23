class Recdr < Formula
  desc "Screen recorder that AI agents drive through a CLI and an MCP server"
  homepage "https://github.com/dzikrisyairozi/recdr"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.1/recdr-aarch64-apple-darwin.tar.gz"
      sha256 "6a2e7a7b59c854798fb44dda0e55a3f96a9d3340585b913ac3f2f178532308bd"
    end
    on_intel do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.1/recdr-x86_64-apple-darwin.tar.gz"
      sha256 "d0a30a9a603c4741dfae7af8ca5b5730d04deb5ea2cff40e392438b5ad31efaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.1/recdr-aarch64-unknown-linux-musl.tar.gz"
      sha256 "937747138587e20762da1f0a34e090cb344c2aea3fad3f0cbc6027c9173be862"
    end
    on_intel do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.1/recdr-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73673252cbb5c1e1809a9a13d99a101c5287edf9e17ecc44315ec6e1b98ea7e5"
    end
  end

  def install
    bin.install "recdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/recdr --version")
  end
end
