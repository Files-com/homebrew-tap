# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.390"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.390/files-cli_macOS_64bit.tar.gz"
    sha256 "337c051b02f320e88a8db30e628f4750e4087d03b5ce36b0bc374eb298fadfec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.390/files-cli_Linux_64bit.tar.gz"
    sha256 "f0f42cdef4b30843483485e687a138c2a996ed673d5b82e41f83072a220fac16"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.390/files-cli_Linux_ARM64.tar.gz"
    sha256 "031d24d5476a605e7c70d74b77a845774f034fc7b390dfcee624c66a051a2647"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
