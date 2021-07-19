# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1494"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1494/files-cli_macOS_64bit.tar.gz"
      sha256 "dbed5265e44771521b8fc4f6606d4c62e52716bf2c6eb434184a3a4eabfed21e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1494/files-cli_Linux_64bit.tar.gz"
      sha256 "8644d3e762a25cdfedcb0eb79777e78f6cf2e900f4fb3945688f687babe6f518"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1494/files-cli_Linux_ARM64.tar.gz"
      sha256 "327a70bd88a9434992cbe6b7e80bd130cd784f0669b92e99fb452ff42a510df8"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
