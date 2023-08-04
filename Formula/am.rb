
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.3.0"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-macos-aarch64"
      sha256 "466a797e6c03016b68484ee004984b283b84611744ccbf20117295a54060dd77"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-macos-x86_64"
      sha256 "a0aa452d348955c01d89899d98145e83278d260cdd2e2c1ffe240292c39a4f45"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-linux-aarch64"
      sha256 "b060a1bfe73055fae67969823dfe1fb192ed6d7af6bef630cae2bccdfd2b3bbd"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-linux-x86_64"
      sha256 "ab7e4efb435d03c58578fb683c549bda48bf362b0aba87d8ff7f896d99527c2e"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
