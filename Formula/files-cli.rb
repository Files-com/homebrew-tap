# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1506"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1506/files-cli_macOS_64bit.tar.gz"
      sha256 "49c01d074370c61ff663004f9e19aa541cae103563c24be792633be27eee9d86"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1506/files-cli_Linux_64bit.tar.gz"
      sha256 "df819ed29653bbbcf192883b8e92ef832250ad8711dcac08fbd3bb6dc8a0a97c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1506/files-cli_Linux_ARM64.tar.gz"
      sha256 "bbc3e322963005302b97fb42303325cd81f167aa1d3fdb4d2d0fc7e9f8c0fdd4"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
