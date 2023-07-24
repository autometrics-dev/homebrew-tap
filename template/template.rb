
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "${AM_VERSION}"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-macos-aarch64"
      sha256 "${SHA256_AARCH64_APPLE_DARWIN}"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-macos-x86_64"
      sha256 "${SHA256_X86_64_APPLE_DARWIN}"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-linux-x86_64"
      sha256 "${SHA256_X86_64_LINUX_GNU}"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/latest/download/am-linux-aarch64"
      sha256 "${SHA256_AARCH64_LINUX_GNU}"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end
  end
end

