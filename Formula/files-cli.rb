# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.6/files-cli_macOS_ARM64.tar.gz"
      sha256 "de67a0e9ebf081c84f6622a44d59355ffe7cd616a92ca20c785100720ab037ef"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.6/files-cli_macOS_64bit.tar.gz"
      sha256 "67acfdddb4cf84e3fc93fae46c7adca490caa2b3fb07f258280576bb93ce31ec"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.6/files-cli_Linux_ARM64.tar.gz"
      sha256 "aa246249e0d4274fda97097b3fde9d6d5d8a146f6d54f37eadabed1dabb5ac53"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.6/files-cli_Linux_64bit.tar.gz"
      sha256 "09a5de1d4f07a4c7d6d177903644fee4fc7022e05e91bb0377e9179d5e14aeb5"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
