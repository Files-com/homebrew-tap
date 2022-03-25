# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.3.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.38/files-cli_macOS_ARM64.tar.gz"
      sha256 "fa7b812b6b92c38baf68e8dd88f6d76ef90ec20f74871f17b3fcf4804893e39b"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.38/files-cli_macOS_64bit.tar.gz"
      sha256 "d1d63b17624e61ba38b890bd619fa43f872a5018533fb38dde1eecd256903b46"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.38/files-cli_Linux_ARM6.tar.gz"
      sha256 "4760da7dacd17bc56743267a4dd47bd5cac8eb90d96e2c9f563fb594bfa73579"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.38/files-cli_Linux_ARM64.tar.gz"
      sha256 "50fda6488ecd65ccef892e1b655a92636ef8c5edee16e489f5d93e79962361c0"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.38/files-cli_Linux_64bit.tar.gz"
      sha256 "1bca0b870d1a66407bec8a0463fd484d0a7a9851870adaf1a2894432e9bfc775"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
