# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1502"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1502/files-cli_macOS_64bit.tar.gz"
      sha256 "92e2e695aa028ed508e2e1377ef30e3db7196ae6f794b599765592c25ea6b2bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1502/files-cli_Linux_64bit.tar.gz"
      sha256 "e86cd1601ec5f58fef00affe438af0c97253496dd7226eb66a8239692c2c57bd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1502/files-cli_Linux_ARM64.tar.gz"
      sha256 "82b5b098d987e41ee05d928d9e37f6eab80fa44539df28473ada485dcd07d973"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
