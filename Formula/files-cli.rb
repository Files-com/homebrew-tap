# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1289"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1289/files-cli_macOS_64bit.tar.gz"
      sha256 "5b22af9126f9242dec2f42f1750d33658dc57204423e55110e9b5b08c07a88f2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1289/files-cli_Linux_64bit.tar.gz"
      sha256 "d20cf1e7a49638f8c055f5d7c0d5507ebbe4d0a1408b126ffa808611d30eba3e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1289/files-cli_Linux_ARM64.tar.gz"
      sha256 "5b7fbce5d747cb2f435249a0be1f5548392e599aa768e39808f868bcb2974f23"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
