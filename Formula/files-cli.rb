# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1362"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1362/files-cli_macOS_64bit.tar.gz"
      sha256 "10d39dd4f3a72f63f0cb603820fc876e0ba56374257fb2094ba93d9211b02d75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1362/files-cli_Linux_64bit.tar.gz"
      sha256 "c3657726de7b5007fdd98765c80c16a24c0d95947ed426f89d3946f1647264dd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1362/files-cli_Linux_ARM64.tar.gz"
      sha256 "575b9a32ee767d285ede73bafc7d77216eef7cd61be655b7cb5eeb049e006504"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
