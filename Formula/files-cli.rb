# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.677"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.677/files-cli_macOS_64bit.tar.gz"
    sha256 "18d8495ede53b21e0b4e90d03ca7b30daaaf35759b1954bf62970db0bc79c8d8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.677/files-cli_Linux_64bit.tar.gz"
    sha256 "3a0c2158efa23ad35fe1891cfc2292b9897ec7bf348bca1d6100ae20ec5cda75"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.677/files-cli_Linux_ARM64.tar.gz"
    sha256 "9dc3270ebf7c005ff4a52a12c21678c2b6703ad371a4d56b6c6fce57f47e0d98"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
