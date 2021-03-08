# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.301"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.301/files-cli_macOS_64bit.tar.gz"
    sha256 "bb578e1cfbd4ff1a8587f1ee692c8602788c655c63f128ae95944e8b9ba22a28"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.301/files-cli_Linux_64bit.tar.gz"
    sha256 "8d197b50b73a41c08874bdc5e3fe9e5e9166606e95efd22bd5c33c010f0906a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.301/files-cli_Linux_ARM64.tar.gz"
    sha256 "de0569e5b082437b828ac24c76dc2e20a21f5c8d7ee37c784b67aed30d353eaf"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
