
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
      sha256 "0c585b76a2be3dfe4dd73d195cc3d334d73091a0c4676e2f74d129a727a2320b"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-macos-x86_64"
      sha256 "27c3f125601da2e19506ffaa87064409cc749043cd7af862ec06d0772e22d24b"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-linux-aarch64"
      sha256 "d2fce026cb16ddc8e00ed968e43312d2057be57cdf0f595b8d40daeb908ade7d"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.3.0/am-linux-x86_64"
      sha256 "45a5cd7dd96cbaa1b969eae8b1b49d3bce94f600e9c71d8438ed6889902291e1"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
