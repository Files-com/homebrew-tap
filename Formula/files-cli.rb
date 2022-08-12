# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.5/files-cli_macOS_ARM64.tar.gz"
      sha256 "73441e62372f4aa9747409844561a69f2c171c8363591862f8c82de8bfc30360"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.5/files-cli_macOS_64bit.tar.gz"
      sha256 "da23e4a7c60ae9bf94b7e70dfd41ba4271f459892369bc3b650bf42222777b78"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.5/files-cli_Linux_ARM6.tar.gz"
      sha256 "e922e734f0bf54f687b1b05978c24baf177518a2a406ea9545d2b89320d83625"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.5/files-cli_Linux_ARM64.tar.gz"
      sha256 "2cfa70494da47eacf36f920a1749ebd64822e51228dbb383ad385c0feadc971b"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.5/files-cli_Linux_64bit.tar.gz"
      sha256 "69b5520e79b6d5b42606d70dc4631f4eb15a728557028c1e1dc7fd2b344642ea"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
