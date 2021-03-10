# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.365"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.365/files-cli_macOS_64bit.tar.gz"
    sha256 "fe3d6d94daaf32d97a6ea6df7cb6bfc72f993250b0140ea0432e3ae8dd666909"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.365/files-cli_Linux_64bit.tar.gz"
    sha256 "7fc0351283828cbd69868715a83f8cb6d422f35c395767bba6d6d66f06e63f3c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.365/files-cli_Linux_ARM64.tar.gz"
    sha256 "d806ddbca8411feb231c6bce5055e7e8e4b6c2b3df0b9609aa173132b664b190"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
