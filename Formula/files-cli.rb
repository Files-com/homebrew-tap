# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1030"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1030/files-cli_macOS_64bit.tar.gz"
    sha256 "d8c51b4d02da118e494fec4f8953391304776a81d5239cceac66104036be247c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1030/files-cli_Linux_64bit.tar.gz"
    sha256 "d96ba2c98efae62cfb417495475a692e741dd8179f3e3fea13b6e7c7f3e3602a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1030/files-cli_Linux_ARM64.tar.gz"
    sha256 "72ec9a555de52d9b6641333b841e696e5b66d442619090e9d21f4a49dc721016"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
