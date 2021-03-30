# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.536"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.536/files-cli_macOS_64bit.tar.gz"
    sha256 "c7436a16e3c9af07ffdb47e7010f8ce0db1d9f2c28e6fa9059dd73a72ddbe1e7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.536/files-cli_Linux_64bit.tar.gz"
    sha256 "aea397ca0ec96e0e1766552ff990847bd00105c77ac3246d54656fa32ec4efff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.536/files-cli_Linux_ARM64.tar.gz"
    sha256 "bb518bb03e581599a9be7986f4cfdbce3c0d0d9d2527cdf88e1d75405b76373d"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
