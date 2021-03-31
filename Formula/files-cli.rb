# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.549"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.549/files-cli_macOS_64bit.tar.gz"
    sha256 "209f41c3e4f2e4679c6734aede27e9ca3f5e19ca8b7224a8403040ed192fb7aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.549/files-cli_Linux_64bit.tar.gz"
    sha256 "055e1dc617cbdb8a7e0d964dc145dd7b2c7330b43522f2b0f15d96a4c02a4187"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.549/files-cli_Linux_ARM64.tar.gz"
    sha256 "7cb99f04462b820cacfa755f50c4ec096cc65a6e9b63e8ef506b46e567144281"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
