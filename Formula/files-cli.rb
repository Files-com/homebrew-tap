# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1067"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1067/files-cli_macOS_64bit.tar.gz"
      sha256 "7e15f52747d825e48e29e2cf59daaa7673af4ba36a1d67e0593e1da902aed6d3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1067/files-cli_Linux_64bit.tar.gz"
      sha256 "96c3673d5e1706a457a24e5fbb5f44997ee53ed2caa642557e0376b9ae5d12e2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1067/files-cli_Linux_ARM64.tar.gz"
      sha256 "3e39ca4124952bd9399cadd5d739556ed492f18a6701181331dc31093a11af19"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
