# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1117"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1117/files-cli_macOS_64bit.tar.gz"
      sha256 "c51eef186f0249196d057420b0f61a5ad9a3702db98dbee1a2bae831a0f790b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1117/files-cli_Linux_64bit.tar.gz"
      sha256 "2fe24271d9517b79791908f1498bedc9941bf0ebed62a174c24cd5a81101ad20"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1117/files-cli_Linux_ARM64.tar.gz"
      sha256 "3415d72109a353ba6d3962c8549286315a36fb1d16f032b03fce9e951f7a53bd"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
