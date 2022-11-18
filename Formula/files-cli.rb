# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.16/files-cli_macOS_ARM64.tar.gz"
      sha256 "2bb9d3c9ce6199187f41f15107d5f8d4febada916c47fa2c6df735501d7d04ec"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.16/files-cli_macOS_64bit.tar.gz"
      sha256 "dd05d0fa62267ec50f6b8fa6f5698aa9b1eb458bc2246321d32edf7e4cae3299"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.16/files-cli_Linux_ARM6.tar.gz"
      sha256 "c8f86faeeb8843d03e58e81705fa72272485e5972342a70a8f4a20abde452396"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.16/files-cli_Linux_ARM64.tar.gz"
      sha256 "9c143a93e0439b90bf6e0c99541abbe0e43d7a8d1f71ba389473d4b3697ff41c"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.16/files-cli_Linux_64bit.tar.gz"
      sha256 "8704e5cd23dac95125367e82daa90819aa7358707dbd1bf9e9809eea87493e9d"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
