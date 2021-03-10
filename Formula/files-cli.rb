# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.355"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.355/files-cli_macOS_64bit.tar.gz"
    sha256 "b4afd963798e7e4ebee05134e75f83aa58a3ab3743e167619d2246e6645842b4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.355/files-cli_Linux_64bit.tar.gz"
    sha256 "81c4cefc379324eb7f8e26cf5f2c4f94a817cbfc4cd7802eb3cc9377519321f0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.355/files-cli_Linux_ARM64.tar.gz"
    sha256 "026b23a626d8a8fc59ce72376058b97f7e0a021e362b218f1ae148d6ca86f866"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
