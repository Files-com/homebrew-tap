# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.617"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.617/files-cli_macOS_64bit.tar.gz"
    sha256 "05883a71d31b5d81508728a3e624d0c727b5ae2b27f648169051fb3695ded1ac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.617/files-cli_Linux_64bit.tar.gz"
    sha256 "ebbca7873feca4ccfed03dee2cb6904ce295c78f325ca88cfbebe637be0c4549"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.617/files-cli_Linux_ARM64.tar.gz"
    sha256 "c9f98964f071a38d435116c56a5f14fa55dbee5ce0c244302cee82d4829a0efa"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
