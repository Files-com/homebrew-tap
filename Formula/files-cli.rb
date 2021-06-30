# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1338"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1338/files-cli_macOS_64bit.tar.gz"
      sha256 "60acd52310831ddada6e6fbecec00e83173a5f314f751b920176b6ee73b8dd5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1338/files-cli_Linux_64bit.tar.gz"
      sha256 "e8e583d4d62b6bd29fe03ef3f342660c37ce501b6abc2e4849f9d2d46a1714a4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1338/files-cli_Linux_ARM64.tar.gz"
      sha256 "95485bead67d6a355a738027089922012fb07a8c40be393dfcb0320bc9cd0e7a"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
