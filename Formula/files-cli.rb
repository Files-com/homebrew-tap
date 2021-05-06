# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.960"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.960/files-cli_macOS_64bit.tar.gz"
    sha256 "3a297a7f0882762b9b2203be31ffd2152964945b9cd3abd224612b63ecee3623"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.960/files-cli_Linux_64bit.tar.gz"
    sha256 "9d01daff6619121957962af652b498959303c568a35aca614d2938fd9624f2cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.960/files-cli_Linux_ARM64.tar.gz"
    sha256 "2e52a5824ba5bb238e7487569e559371283681e2d7b62b7eb9827f992fcc8ee0"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
