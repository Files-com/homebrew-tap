# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.17/files-cli_macOS_ARM64.tar.gz"
      sha256 "8bdbf54e0359c801e1b567be69814aa6b31df9e14b6da72c92ea474dd677089d"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.17/files-cli_macOS_64bit.tar.gz"
      sha256 "94387f9b352023362f88974727a1c75c191b9736228b7fbc1760a6d0d6b71a32"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.17/files-cli_Linux_ARM6.tar.gz"
      sha256 "f75a2ad980dc522c34e99edbb1bf181b711b21c88ee6af6609f21889c378e200"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.17/files-cli_Linux_ARM64.tar.gz"
      sha256 "2b1e4bbe5d081d71f4909e6f93c8737121b16252dfb8830fb1d913f18af144b9"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.17/files-cli_Linux_64bit.tar.gz"
      sha256 "c177946be9d7426656299d84c1a999645a896f202244f38ce174e99744b75b5d"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
