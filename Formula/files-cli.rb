# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.334"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.334/files-cli_macOS_64bit.tar.gz"
    sha256 "bfb13d2fd1aeb376e1d10f219312405df19f4c1c612621fa01ea2eed99f3fb11"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.334/files-cli_Linux_64bit.tar.gz"
    sha256 "6ca48bd3320439694f8ff6f53712b53ba106f09557702b0b63720e506f3fa26a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.334/files-cli_Linux_ARM64.tar.gz"
    sha256 "efef2230a644b5f2d2b21ffc602780fb97d7385dee12729fa99a3ead8fe432d8"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
