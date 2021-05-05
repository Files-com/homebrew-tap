# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.943"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.943/files-cli_macOS_64bit.tar.gz"
    sha256 "3b322f47835c9906c297af42e48eb2c02785b9a4836765476eb96aa252e7f0a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.943/files-cli_Linux_64bit.tar.gz"
    sha256 "3a23a165b34641ede5baeeaedf1507691b471ee3ca937f5b9a104f43a3c95bdf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.943/files-cli_Linux_ARM64.tar.gz"
    sha256 "ebc062bfc2d0d0d7fe25f426246729b832178ca849b44cf14eaf24b50c7e79c5"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
