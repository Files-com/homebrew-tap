# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.533"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.533/files-cli_macOS_64bit.tar.gz"
    sha256 "ed56d20e1bfc489352d07e7b42c79daa980604985043f3c69a234b232504f461"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.533/files-cli_Linux_64bit.tar.gz"
    sha256 "a4447a89ab76ae6e8e8ff7c3b373ae301b1c7eb8c281c6ea45a5e9d9097af879"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.533/files-cli_Linux_ARM64.tar.gz"
    sha256 "eb0199f27d10a97628f1bd55dccbad3973119728a5c035845057a9f10263e1b2"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
