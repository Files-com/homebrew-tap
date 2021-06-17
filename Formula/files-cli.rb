# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1154"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1154/files-cli_macOS_64bit.tar.gz"
      sha256 "0fa31351a13888d8a6d37b9ff47b79162f9dc92c1b8456e33f01bf160d679ae9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1154/files-cli_Linux_64bit.tar.gz"
      sha256 "6876f4e4407a4e7265feea7ffc97a81ac9cfbe10478c32f9a816da08ca84d497"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1154/files-cli_Linux_ARM64.tar.gz"
      sha256 "6a064d575a7e5cabb6f9e1ab3658cfdf9fd2d40b505ed3b74ad6b815387d53ed"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
