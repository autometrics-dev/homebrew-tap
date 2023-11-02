
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.6.0"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.6.0/am-macos-aarch64"
      sha256 "23af16ece95b0c74edea5fc6a313443a07b27bd456ae6026d8ab81ba8bdc3b19"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.6.0/am-macos-x86_64"
      sha256 "c3404512217b34475959265511bef69dc9dc1b7f53b47dd1a3d752db29b59121"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.6.0/am-linux-aarch64"
      sha256 "a5f06092bb08522ebb557ae2cd15fa7615fc2704521a7187cde9a21af9bb725b"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.6.0/am-linux-x86_64"
      sha256 "7bb821a3b2a5c075b236a92581a3993078fc4c7b3d5ed5d3ada7a150470ced52"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
