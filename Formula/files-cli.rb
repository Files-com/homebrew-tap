# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1621"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1621/files-cli_macOS_64bit.tar.gz"
      sha256 "79b94e3aed8f9db2965bb0cd83605f298dbf1514df0f3eaae34ca7813d440b15"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1621/files-cli_macOS_ARM64.tar.gz"
      sha256 "6375863ce03be9f3519863cb315a6ae547c3f307997046ee042821442b54f3b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1621/files-cli_Linux_64bit.tar.gz"
      sha256 "8aa247010b15c71e6703078d043d1c1bebb2a7566aed458a237c26bde7384b7f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1621/files-cli_Linux_ARM64.tar.gz"
      sha256 "b5b2833933cbc3f60266744c39e6d8a33db94248b93a46f366ef10d3512e45f3"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
