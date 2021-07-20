# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1503"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1503/files-cli_macOS_64bit.tar.gz"
      sha256 "aa78d6dfdfad8ae484e48c5acc8f5c834f4ffaaa119fbedbebb48d7fa19179c0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1503/files-cli_Linux_64bit.tar.gz"
      sha256 "f091bdfe461f900d733596c6a03f0510e0b2a1d93029fdbfbb8a6df630075612"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1503/files-cli_Linux_ARM64.tar.gz"
      sha256 "31716a1551509f3ed1ee00972bf9cd52178a5ebcc8e9cc44744dd82f128cf3da"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
