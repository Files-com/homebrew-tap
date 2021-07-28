# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1571"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1571/files-cli_macOS_64bit.tar.gz"
      sha256 "6f426bcc3261ac05b654c57ed1b2518435615684c54d76fa45f7733ea574d5b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1571/files-cli_Linux_64bit.tar.gz"
      sha256 "581cc1ea2c95e26579ee10607a31b8782ce0f2494ea2f5485092979a3ea015bc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1571/files-cli_Linux_ARM64.tar.gz"
      sha256 "4c08b1b0d6963029b545f311a161969f40c89dd47062268692a1052708912072"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
