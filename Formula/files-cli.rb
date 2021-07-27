# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1560"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1560/files-cli_macOS_64bit.tar.gz"
      sha256 "1cc0c243c35c549e2c370524d87a6c50567e12875e6e7832f33862ca57b51337"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1560/files-cli_Linux_64bit.tar.gz"
      sha256 "abf6649f28c51a4643c15dbbe0068535f5779c179273184f2381319f9ba205be"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1560/files-cli_Linux_ARM64.tar.gz"
      sha256 "ea71ca8407f0ce8146824c9fdb214a77df017eb019c0e5d3ddb7d40da46c6094"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
