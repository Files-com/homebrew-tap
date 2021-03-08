# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.307"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.307/files-cli_macOS_64bit.tar.gz"
    sha256 "5a86c4a5fe14bab92fa77191d4633a8d185299f33405a539b7232487fc1eea64"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.307/files-cli_Linux_64bit.tar.gz"
    sha256 "592bd65ee550de01819d8af353ec49ad9593f08d71903b9f704c778bdb70118d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.307/files-cli_Linux_ARM64.tar.gz"
    sha256 "e9eb37c403e34f947c2a3e6c7a3296cf91058dbb9f4283d2e357d9b61b82ab15"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
