# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.9/files-cli_macOS_ARM64.tar.gz"
      sha256 "d7951de7e72bdf7cc64667d34bc38f695e98cb2e5394051901e0f8f0156ec50d"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.9/files-cli_macOS_64bit.tar.gz"
      sha256 "f0e11910d10c43a0ce4796b60468c5dab55730df418cd34d71f160ee5a8cfd7c"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.9/files-cli_Linux_ARM6.tar.gz"
      sha256 "441516abeed4fc4cce0cd46a84138bdd8657d990b090dd94b2db8bef4bac6ebb"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.9/files-cli_Linux_ARM64.tar.gz"
      sha256 "9c4284ed134c17491715290f9b9f798ac3145341f5a2fe010022f5a41aad8794"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.5.9/files-cli_Linux_64bit.tar.gz"
      sha256 "24b279e394f9e9d9a8b12b0241a0695160fb725f3b1cbb6c69cfe448cf97668d"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
