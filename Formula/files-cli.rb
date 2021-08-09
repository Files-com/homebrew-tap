# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1637"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1637/files-cli_macOS_64bit.tar.gz"
      sha256 "8fcf9c4a4c5d692d41ed9ec0055a1cdd1b4d96ccf3ae26e10628ee8b1b6a92c8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1637/files-cli_macOS_ARM64.tar.gz"
      sha256 "9affddcad7e85acccd966a2e730687b8d1bfbcaa724b838a2ac54e430fa4430b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1637/files-cli_Linux_64bit.tar.gz"
      sha256 "c102d747e277f76aab9a6c07e0fc2ee0a8a39fed376d8ea347d1a5e67b77d847"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1637/files-cli_Linux_ARM64.tar.gz"
      sha256 "35a4f53eb7e45db9539ee50310f7be8ca638ed2b80b0127c5005a22f83325953"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
