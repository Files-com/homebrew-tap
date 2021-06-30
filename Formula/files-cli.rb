# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1337"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1337/files-cli_macOS_64bit.tar.gz"
      sha256 "203f28cf0eddf97fd1242a9e7781f72625ab8d094699e396bd72da7a40de0c71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1337/files-cli_Linux_64bit.tar.gz"
      sha256 "68d3b29d663e797ea84d606f718cf3153efe6fdeee5c33baabe5b4ed3d66c342"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1337/files-cli_Linux_ARM64.tar.gz"
      sha256 "59e0cfe401581ca1e0dd1b3b6532f75827fc38cc14d0625e90b42fd93266aaaa"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
