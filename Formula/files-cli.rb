# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1480"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1480/files-cli_macOS_64bit.tar.gz"
      sha256 "9d559feedfb02c211ffebcecf2adae57a7bedeba55c66fd71a8315a1756a2480"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1480/files-cli_Linux_64bit.tar.gz"
      sha256 "da083733a8c0ff98b63aa3968bee9c8bf9bb0d2951ace25eb0795a629647dda0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1480/files-cli_Linux_ARM64.tar.gz"
      sha256 "8a329af1b191f5e13bf145d28666c0634eb1724488a8352e25e1bd7cb07fd5ad"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
