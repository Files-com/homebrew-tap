# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1632"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1632/files-cli_macOS_64bit.tar.gz"
      sha256 "75ff6c06c5c0073d1b4f92db776eb9774618f6b86a4b5b4bff88969b67a0206a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1632/files-cli_macOS_ARM64.tar.gz"
      sha256 "7f2a2ab9c02ad2d6703bd660cce81731f8f797fa85e59a9923989c10dd09715a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1632/files-cli_Linux_64bit.tar.gz"
      sha256 "703c7be2e8c64575192285e4c6e82ff2d278ad62a8c93dde75699f98cae44247"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1632/files-cli_Linux_ARM64.tar.gz"
      sha256 "cac1a229ab34e4ccf920c5f8655665ffb5eaea5149312c502077735cfdaa6b71"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
