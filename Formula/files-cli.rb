# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1009"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1009/files-cli_macOS_64bit.tar.gz"
    sha256 "5ef704579754ef26b0438b89ba4d8c8304e1782a8178663f521a83eb7ad55e1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1009/files-cli_Linux_64bit.tar.gz"
    sha256 "9c7abb93ee9b95d73b6d8ee32f9011e57339a9485c311802667e31ea67617458"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1009/files-cli_Linux_ARM64.tar.gz"
    sha256 "8cbf1f3f0793522dccf777f69dc76d55012ecfd9375034b58efc493e801f81eb"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
