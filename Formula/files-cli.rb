# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1670"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1670/files-cli_macOS_64bit.tar.gz"
      sha256 "fbb8b07aa2b651ea27b16f272326718609c361eeb9abe526bdbeac5e397545d7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1670/files-cli_macOS_ARM64.tar.gz"
      sha256 "2e4b8363a7ac80f95043430d82e8d9ed136ceb243af775b9aaec9fcf26a8a9af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1670/files-cli_Linux_64bit.tar.gz"
      sha256 "55dee1aa1ce4cb86113ea4a03822753998b59d48a1aaa0f4f64218cb7f0000c0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1670/files-cli_Linux_ARM64.tar.gz"
      sha256 "e8bbf779014f88195dfeb4167582a34c734006a4700784ae64afe6f6a8033ffa"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
