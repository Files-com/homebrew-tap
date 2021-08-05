# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1601"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1601/files-cli_macOS_64bit.tar.gz"
      sha256 "e868884f8add0a5e06547568adb0854d278279f3802ad57678cc30d3d4ea74d0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1601/files-cli_macOS_ARM64.tar.gz"
      sha256 "f2d68e48e84d2547184b088b74e2a9402feccc3c8d40228c9a3fbf4064f30bc2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1601/files-cli_Linux_64bit.tar.gz"
      sha256 "e1bcff777f0d3bc13118b903ff5f62dbaf7be17bc981ba907e654e30eb817c90"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1601/files-cli_Linux_ARM64.tar.gz"
      sha256 "ce12d0ac1253a5df7d9cb657d31cf3908d4f3d6d97222843cdf61368a00fdac5"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
