# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1205"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1205/files-cli_macOS_64bit.tar.gz"
      sha256 "5c227222cca3b04ab1075b0c12936090575e0dd8cf4757151f97cb5cd16a0c5c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1205/files-cli_Linux_64bit.tar.gz"
      sha256 "ff30cde4e72539a74023ea69160469bc1245cac51b6728521b98040710183f09"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1205/files-cli_Linux_ARM64.tar.gz"
      sha256 "141704a0e6e9ae298084d5647aa4e22f700b3636137bbcba2ad62984343acb9f"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
