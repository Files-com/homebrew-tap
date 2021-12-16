# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.10/files-cli_macOS_ARM64.tar.gz"
      sha256 "ce63bcf01c764e15394a511d705fb0f9fa4e85f10343dfbbf744412b88f674f3"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.10/files-cli_macOS_64bit.tar.gz"
      sha256 "bfecda1ea9da4d4c213c0df33d039875df0d87de16716b6fd05a839d2206da73"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.10/files-cli_Linux_ARM64.tar.gz"
      sha256 "2d497d516ee7e3379644e47cceff3f334e0acc7ebb9407b06c14eefbf056e082"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.10/files-cli_Linux_64bit.tar.gz"
      sha256 "d03e2ba5403abfe416e3aa53fe03521fc5cd9fc8ca815ac9dee4d8b48bb736b2"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
