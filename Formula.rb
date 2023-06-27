class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.1.0"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-macos-aarch64"
      sha256 "1fb9c209902c732e4f4f1cd5e902f8b3a31e71a615c5fe1d3807a48fc4569b5d"

      def install
        bin.install "am"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-macos-x86_64"
      sha256 "cbbe9669971109d2d328db657018de2a7dcc9a3b64946a27e5502afc8d513192"

      def install
        bin.install "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-linux-x86_64"
      sha256 "b1834bfa313b7b5ca221939431bd26bc946f8b0b8fb31c521130b0523d6afa15"

      def install
        bin.install "am"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-linux-aarch64"
      sha256 "217bd1fda9b0ea4e21f375d533479afbb6599505d705bbfabd984177b351b7de"

      def install
        bin.install "am"
      end
    end
  end

  test do
    assert_match "Usage: am <COMMAND>", shell_output("am", 1)
  end
end

