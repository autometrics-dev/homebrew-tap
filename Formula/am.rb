
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.2.1"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.2.1/am-macos-aarch64"
      sha256 "8cf068403755e8f09d87b1857d34abcf47ae43812bcf2017035ccf6ee19fe47a"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.2.1/am-macos-x86_64"
      sha256 "e396ab2dce865294fff67838fcc9861c54c4925a66cfa65c9c2d9254706aaab9"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.2.1/am-linux-aarch64"
      sha256 "afaa72ee297636611a079481a1eba6bfb382d96a694f9defdf9890aef498688f"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.2.1/am-linux-x86_64"
      sha256 "846fdbab05d2e9af579dfabc0a1e1f52a238baad0a1a5eaf9501fd2597d3c0d9"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
