
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.5.0"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.5.0/am-macos-aarch64"
      sha256 "cbfca22c7feec1c8289fe8550eb1a8f6ff8d0960c749e5324f814ba15262e178"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.5.0/am-macos-x86_64"
      sha256 "d604214289d420d0a36ee5c35198ce5bbf1411de74f0eba96ca695b58ecbba19"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.5.0/am-linux-aarch64"
      sha256 "59c545d57b2526b45e542a2c1aea664d7f8328f95e4fc090cdb15bfc766adbb1"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.5.0/am-linux-x86_64"
      sha256 "9b6b0d6b7fd6a9e9663ef8387fdccd6f6ba710ac1715fcc9b359ce0a7f23f651"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
