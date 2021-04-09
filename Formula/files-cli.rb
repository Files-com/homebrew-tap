# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.649"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.649/files-cli_macOS_64bit.tar.gz"
    sha256 "b0460b08b794a6c042e8593a0bfff21b39086880ba5604da61a0a56d5c98ff61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.649/files-cli_Linux_64bit.tar.gz"
    sha256 "47e6eb2119912bca439a65458d4b5fa2aa545cd2c01aebc79aed67c513358d6c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.649/files-cli_Linux_ARM64.tar.gz"
    sha256 "1d701e9cd030952b8ff85b34a0d5b8ac96d345d3f69ed03e9c2b8fc3632a8d41"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
