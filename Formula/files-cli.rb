# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.377"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.377/files-cli_macOS_64bit.tar.gz"
    sha256 "f9c4b9c22a003cb8164bdf6f8c818345ed756f30a3ebf572421add33d36a162a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.377/files-cli_Linux_64bit.tar.gz"
    sha256 "a9168b2a69418050675c099dfe9b16106730a05a5f6d145eaee0e53e4be2596c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.377/files-cli_Linux_ARM64.tar.gz"
    sha256 "9800396d5e4be52ec4719c96c38409c53df0ea393d0175e41b03b9a35a56c3fc"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
