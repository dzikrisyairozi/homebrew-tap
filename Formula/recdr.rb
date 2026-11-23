class Recdr < Formula
  desc "Screen recorder that AI agents drive through a CLI and an MCP server"
  homepage "https://github.com/dzikrisyairozi/recdr"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.0/recdr-aarch64-apple-darwin.tar.gz"
      sha256 "23a9e507b8b6e0565ab97b95a17731e2651d5770cf56a9130edab83b7ca6d13d"
    end
    on_intel do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.0/recdr-x86_64-apple-darwin.tar.gz"
      sha256 "fa9ea0317eed17950fffcdf67712064d48a6693f89e1d501d20043ac5b5d4ef0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.0/recdr-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93b5fdef9ee27d66642fb94051380ff7d1d8e732ccebdb9cc239e2304c539929"
    end
    on_intel do
      url "https://github.com/dzikrisyairozi/recdr/releases/download/v0.1.0/recdr-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61b7c25d90fa3b4e283e1dff8f3b582da0777358427da2745553dfff2e5e4d50"
    end
  end

  def install
    bin.install "recdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/recdr --version")
  end
end
