# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1035"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1035/files-cli_macOS_64bit.tar.gz"
    sha256 "280e57cf027c6e49a721ec5e79d4905463e14a963307698a6bcc685193ae8721"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1035/files-cli_Linux_64bit.tar.gz"
    sha256 "9482d0b94e9d66bdded18f83392af95d64d3c9cccd946a67897da5c95cea7d7e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1035/files-cli_Linux_ARM64.tar.gz"
    sha256 "e4343ed75b9dfe9c2519858d45888a40f096ce5b306f3f9d6fdad36d36d4f118"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
