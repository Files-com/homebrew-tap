# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1498"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1498/files-cli_macOS_64bit.tar.gz"
      sha256 "f70d67b61cfb2a2b2a0ff79a42c0365f98ed52b012927324a1baa7a9f1e0f1c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1498/files-cli_Linux_64bit.tar.gz"
      sha256 "bb0568232062b922c0fa61b67ca5912f5a8fea947edcdd5958b57b5432044431"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1498/files-cli_Linux_ARM64.tar.gz"
      sha256 "61e51f659a9875a8407087d9ab0eff2ec34ffba2c1b0a629ad98d00661923d89"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
