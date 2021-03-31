# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.558"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.558/files-cli_macOS_64bit.tar.gz"
    sha256 "b00926b0551ec7106c7fdbb1ad740e3c93f0e0b3d80a152179f68d1377eaad89"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.558/files-cli_Linux_64bit.tar.gz"
    sha256 "701aa87b147619552c01e617614bc9ebe5749e32265fb7f4d5104d75cf816759"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.558/files-cli_Linux_ARM64.tar.gz"
    sha256 "29684c27b468231e9a907fd56817ff89b98413dd467a980e8022400774e0cb0d"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
