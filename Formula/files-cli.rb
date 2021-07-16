# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1464"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1464/files-cli_macOS_64bit.tar.gz"
      sha256 "296e3530a0a749a741cc52ce1347f736ff6ff7c8238aecde247f9a79bbd00a38"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1464/files-cli_Linux_64bit.tar.gz"
      sha256 "befb2035b57a4fc926a2291deaca31ec32161c795cb72f37788bea50ca393cbf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1464/files-cli_Linux_ARM64.tar.gz"
      sha256 "92414c1f459011330a00cc8a6b270fa6c5002e612a290ad9bb8ae1bc494693f7"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
