
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.4.1"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.1/am-macos-aarch64"
      sha256 "d64239783f2b90b6272f915d872a678dc4ff832153d554fb078e11947526b1f5"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.1/am-macos-x86_64"
      sha256 "224999a760b9ca86fb449471e195a2a0cfc5f7d206efbb93184a06fb3be78ad2"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.1/am-linux-aarch64"
      sha256 "31b7dbb1352a5d2cba04c5bd96fa1f028418e181a545a0b802aba3834e550722"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.1/am-linux-x86_64"
      sha256 "2eb968405012db163d00bab5742ee087effedc4808bad1dd046209ad70cc9c11"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
