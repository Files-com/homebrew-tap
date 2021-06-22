# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1239"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1239/files-cli_macOS_64bit.tar.gz"
      sha256 "a10f5705e1a5880f1c6e6e08b9ea08360a63116541f434f3d13bef057d8ab643"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1239/files-cli_Linux_64bit.tar.gz"
      sha256 "390f721d453e3eafade9b850a9d923eb3a465dc2bd1699ec376dd5f9beb117cc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1239/files-cli_Linux_ARM64.tar.gz"
      sha256 "f27effa9f6186416753660cb40b0852c7dbeba30da9012922e4413f6195e121f"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
