# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1279"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1279/files-cli_macOS_64bit.tar.gz"
      sha256 "89c3c5ff4cf0af1e4d5f4cdb207eb8148c056a82b4e93f024eb0ac3a0b571b2d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1279/files-cli_Linux_64bit.tar.gz"
      sha256 "a255fc8a33b5471c4a63fa6922f92f4889397d13344b92707aa40f2c208bcdf1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1279/files-cli_Linux_ARM64.tar.gz"
      sha256 "f90c99b007951aa378862059cae1c0e9e5bf763633802e83927ed8c1499052ba"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
