# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.0.1/files-cli_macOS_ARM64.tar.gz"
      sha256 "add434cad57607baa36544508d4ab6ca86c719213fd82d72f676e91721de83a1"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.0.1/files-cli_macOS_64bit.tar.gz"
      sha256 "dd00dc6cc1fc067cb22ddcdfc25d4bf1d679fbe39ebceef78e0ae76a56cf832d"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.0.1/files-cli_Linux_ARM6.tar.gz"
      sha256 "d8e75cd151c58ed7826db4dae2a0a14267338cdfa5c11f0c1cb913d4fe76178f"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.0.1/files-cli_Linux_ARM64.tar.gz"
      sha256 "e19cbad2a5319091be9fb256d64a95a4c8eb5ecbb2ecddd112f475cc64eb7554"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.0.1/files-cli_Linux_64bit.tar.gz"
      sha256 "ebfa5c50ea7f08d5463cade905daa6853837024c6448d4c9ec915b952ade3501"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
