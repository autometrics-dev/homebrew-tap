
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.2.0"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-macos-aarch64"
      sha256 "6e8266c54bb3fbfad1009c6ae2225e73894893a112c38aa4560b462d04376aa4"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-macos-x86_64"
      sha256 "f75ba1f6ee462d6d3c143f9ee6870f119d140e53f18793d3da6c5398ad5342b8"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-linux-x86_64"
      sha256 "18950d371c4d6b1bdb1065cc08f823ac6932288ef4e4d67d51867f30b324b4b3"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-linux-aarch64"
      sha256 "c14d88881b7391519dd306aa8cbe3e8384e460361011ba4ed11a6421d9031780"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end
  end
end
