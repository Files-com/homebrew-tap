# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.7/files-cli_macOS_ARM64.tar.gz"
      sha256 "4102065883a8d89608dc70dd8e57ededd7cf6c7b59ba5988b04a2df046005ec7"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.7/files-cli_macOS_64bit.tar.gz"
      sha256 "6037e0e05adaf51af8545485dd77ad91d9b8d93e38ba5c0a86db75781cad5bc6"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.7/files-cli_Linux_ARM6.tar.gz"
      sha256 "3770e9e2aefc1ae545aa6a76c38cfdfaf723e78f875c902e280565c9393567a4"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.7/files-cli_Linux_ARM64.tar.gz"
      sha256 "4986ea1147b39b9e562ed434f760889efcda00153c583201e757e13bf9d726cc"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.7/files-cli_Linux_64bit.tar.gz"
      sha256 "f26c620434fa150d94ae8a44292a5f7125007e3a347c10c45db0e624bdf05004"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
