# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.6/files-cli_macOS_ARM64.tar.gz"
      sha256 "4c9e2e116ca4c209653dc05742e07fd9f75a9b74b6c2df3aea2f87abb36c3b0b"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.6/files-cli_macOS_64bit.tar.gz"
      sha256 "dabae8ccd1465e68b90a251679ab31ca794ba0d283e17446fae85725b345969e"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.6/files-cli_Linux_ARM6.tar.gz"
      sha256 "63fb8264db33b2cf610565f8274ee5a8e08517c6f349fc7391632d9de5c40248"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.6/files-cli_Linux_ARM64.tar.gz"
      sha256 "1bc51795d20991e624d8b9ff592c7755d172e29730583593e2de10c03456ffd2"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.6/files-cli_Linux_64bit.tar.gz"
      sha256 "53e3189a4543ca98f701a5c2319bbfbcd33b723a0080398be8832348cec0d944"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
