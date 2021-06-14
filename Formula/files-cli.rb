# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1119"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1119/files-cli_macOS_64bit.tar.gz"
      sha256 "34ff5ef807aadd9f3061cd534f586bdcf095308e0d8f2c15ea19bfa3394562a3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1119/files-cli_Linux_64bit.tar.gz"
      sha256 "74c93196223e00d05a932a27c8e33585140c14b322091fcfb363d904400165db"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1119/files-cli_Linux_ARM64.tar.gz"
      sha256 "fea9daaea4c3f84545c2a4e36c5076b5ade5cafd525425b6cc82baed4c5eb353"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
