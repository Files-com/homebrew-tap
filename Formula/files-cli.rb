# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1083"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1083/files-cli_macOS_64bit.tar.gz"
      sha256 "28e00dcb3bbdbbd490b4882cb119fe26b5ba7ca986bc5f789aa18050579b0908"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1083/files-cli_Linux_64bit.tar.gz"
      sha256 "2a337ee3c70d5c12e2f9d8c3bed8aa3e50ef8e2571cc60606168ae415afd2ac9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1083/files-cli_Linux_ARM64.tar.gz"
      sha256 "17b63794aa96e13181ad12062d7336d9bea48cd146392ccfda8ea0b764661021"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
