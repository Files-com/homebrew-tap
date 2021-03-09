# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.312"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.312/files-cli_macOS_64bit.tar.gz"
    sha256 "4f4f8c6c833f3f4b800c026d5f274ab510539009ca7a9619127b95c7552d9a3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.312/files-cli_Linux_64bit.tar.gz"
    sha256 "841888fd42b09aa8c7db5cddfef60acd4b5342453e32329191681a8533287033"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.312/files-cli_Linux_ARM64.tar.gz"
    sha256 "3d2a4e22339e5e25df5c2bda274b26143e9c5ea69cc64c6c9e0888c2d1e5f4c7"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
