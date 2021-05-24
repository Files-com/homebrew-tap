# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1015"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1015/files-cli_macOS_64bit.tar.gz"
    sha256 "91632dd6668a962a16820f0871f5d1d6a26ccfb2f7ad0b2defbf6ef0ef69a437"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1015/files-cli_Linux_64bit.tar.gz"
    sha256 "c176db7a18689d8bcb7cced0b73383d915df357bf4682069c71f1f7ac53eec68"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1015/files-cli_Linux_ARM64.tar.gz"
    sha256 "4d2c43301f21a5e4b80667c550115c7bd794119abbf45116c92a81db432c7f4b"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
