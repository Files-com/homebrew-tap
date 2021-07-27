# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1564"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1564/files-cli_macOS_64bit.tar.gz"
      sha256 "7edc3ce897abbd0158fdee2f5586ca103c998c71a85ccefba3d1fcdfc5db5cb3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1564/files-cli_Linux_64bit.tar.gz"
      sha256 "504b342827ac1ebdb306790240ca86bcdfe5551306bbbfce270b9752f0c04a6c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1564/files-cli_Linux_ARM64.tar.gz"
      sha256 "7338cce26c479d6bc6c4223e4da691d0bac21028c0379e3dbb18f721b0dfd0e6"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
