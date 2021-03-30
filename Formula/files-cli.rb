# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.526"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.526/files-cli_macOS_64bit.tar.gz"
    sha256 "4232577cecae7c9da711ea063d4a0d4efb56bbd2ed6758d35e42482fbae219bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.526/files-cli_Linux_64bit.tar.gz"
    sha256 "5b133e74a8d3ebc1f6fbedd2eb4febcc0adadf1be755984f778e794878dbf6d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.526/files-cli_Linux_ARM64.tar.gz"
    sha256 "1fff2607a6b2fa7ff2af9785b5da4a135c6a14d8a6912a5c48c25d48a670c541"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
