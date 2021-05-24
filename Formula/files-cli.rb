# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1010"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1010/files-cli_macOS_64bit.tar.gz"
    sha256 "63f9efb7757fb99dbcb62e964f08553cd9bce57d8a149603aa11ea50c0d89b8f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1010/files-cli_Linux_64bit.tar.gz"
    sha256 "0d1e81c4b540e6e23d1493dfdb1f3a09941c0d852fa1e4f59ebc2c4abea775d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1010/files-cli_Linux_ARM64.tar.gz"
    sha256 "1ad74eea080a3f325e098766687ea0422af4bc3f61dea82da05e2d6bdd40a885"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
