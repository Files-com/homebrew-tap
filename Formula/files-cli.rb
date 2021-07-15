# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1425"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1425/files-cli_macOS_64bit.tar.gz"
      sha256 "c9786f3f83780f8cb6f0e206ec00970a8912764b583ae1174673c965a0edb0ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1425/files-cli_Linux_64bit.tar.gz"
      sha256 "5f5ae194120ba4eaaeb0677ca119b039f30325833ced56d4ab425ee5e9fba8a7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1425/files-cli_Linux_ARM64.tar.gz"
      sha256 "c5e4ba920f6dfea98875b138941ece5719b230904ad76da4a3c20f08bf6fb6dd"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
