# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.563"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.563/files-cli_macOS_64bit.tar.gz"
    sha256 "9c047236aceabe7259c4468310a35bc71791e6f7d90cce5cb8be2e5a8a9b02bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.563/files-cli_Linux_64bit.tar.gz"
    sha256 "1299ba451abb5c5bbc13bafc918de3d4a57ed7dca0c57e7d2dde18fb96753e34"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.563/files-cli_Linux_ARM64.tar.gz"
    sha256 "41505d98d175fd2e8bab267b2614b7e8ad849f77ee664f413c542d71f46f5914"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
