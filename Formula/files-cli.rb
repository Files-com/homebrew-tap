# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.709"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.709/files-cli_macOS_64bit.tar.gz"
    sha256 "bf64b0020f3013233a8e8194d7466db4eb4fa32a6777f74517313aeffca3288a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.709/files-cli_Linux_64bit.tar.gz"
    sha256 "f8c5b3a0b25717d271d0907a34a2fbae0c57fd83337196ff9216f65947ba4903"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.709/files-cli_Linux_ARM64.tar.gz"
    sha256 "86b8c4f26a433ccae5b8f76af2551918537d523ecf9bbfba70d6aac5f73d1a38"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
