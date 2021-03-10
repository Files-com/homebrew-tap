# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.345"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.345/files-cli_macOS_64bit.tar.gz"
    sha256 "fdbdf15f8d9992d6b3ad5c4f2a3b55b3b86bf590ffb14b04b674f6ee417b898e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.345/files-cli_Linux_64bit.tar.gz"
    sha256 "3795fd2ff44366f5ee3b79f5912e7acd06c03d53e8ffe1ab2cc05bad9569d20d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.345/files-cli_Linux_ARM64.tar.gz"
    sha256 "062711f04cf5b15080bf1ab9af7eaf0b7d95081f1069fc9adcc67c7d2cfa3dde"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
