# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1634"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1634/files-cli_macOS_64bit.tar.gz"
      sha256 "0da5fd4558dc4771059f372cbdb2fc06a073c49a91ce926cd363c765ce9966e0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1634/files-cli_macOS_ARM64.tar.gz"
      sha256 "60b54905ee02f5eba10cd6ef36678b392b264cbd644746d334d2e4edaee0cdd8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1634/files-cli_Linux_64bit.tar.gz"
      sha256 "7e7e0843ac2bf8e796a5a164e843c6e394c74962548ed0c421778f237d127627"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1634/files-cli_Linux_ARM64.tar.gz"
      sha256 "1635b9397b905ddb93318cac5598021315fa6bad389ab9862ab6171a9afdb787"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
