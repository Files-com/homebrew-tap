# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.609"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.609/files-cli_macOS_64bit.tar.gz"
    sha256 "f89f04d965ad3d30723f026423e8e43fbd6c98a99201a1e1ad1bcf69282b8544"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.609/files-cli_Linux_64bit.tar.gz"
    sha256 "82f27dcd422b16960efe7986d7afb7a3f3f859f8a04f4f627f8c04f9b98c5e3f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.609/files-cli_Linux_ARM64.tar.gz"
    sha256 "9f9bc1da19e3205d6ae9757dfc715eb801c682eba89f61e1f29e286fa4b71d27"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
