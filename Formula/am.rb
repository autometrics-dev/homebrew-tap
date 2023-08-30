
class Am < Formula
  desc "Command line tool for Autometrics"
  homepage "https://autometrics.dev"
  url "https://github.com/autometrics-dev/am.git"
  head "https://github.com/autometrics-dev/am.git", branch: "main"
  version "0.4.0"
  license "Apache-2.0 or MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.0/am-macos-aarch64"
      sha256 "2eef355cf1f8f89dd77466dbd50189c58e436e108cb9ec717187d20efc3e1fae"

      def install
        bin.install "am-macos-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.0/am-macos-x86_64"
      sha256 "67c99cdc398c0626850fdfd51b3900583c2874f478231c93d7d081af52385f27"

      def install
        bin.install "am-macos-x86_64" => "am"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.0/am-linux-aarch64"
      sha256 "78ba2322fd506bd8fce1d0d8964328f392d8b701660736b3ffa3d42473237014"

      def install
        bin.install "am-linux-aarch64" => "am"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/autometrics-dev/am/releases/download/v0.4.0/am-linux-x86_64"
      sha256 "b3088d9bb04b1c4b302b747e22de48f062764093c3d6c4a568c528c0a9435165"

      def install
        bin.install "am-linux-x86_64" =>"am"
      end
    end
  end
end
