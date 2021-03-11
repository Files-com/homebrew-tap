# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.378"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.378/files-cli_macOS_64bit.tar.gz"
    sha256 "7c9313c69082d538c403104b0485e03bcc200bb69276ac8dc348ab77b20216c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.378/files-cli_Linux_64bit.tar.gz"
    sha256 "baa3666e22ac37e4bbb676384580b6c5122eaf453be5db9d13e9225badb0d51f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.378/files-cli_Linux_ARM64.tar.gz"
    sha256 "a1ffbf4c0b4ecedfd3168b3f1bfe77e97323ebdbf6095a63001217f527a04059"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
