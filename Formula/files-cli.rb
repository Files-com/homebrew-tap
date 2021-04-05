# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.610"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.610/files-cli_macOS_64bit.tar.gz"
    sha256 "5614541e39ecdb016294afe0339af481a626bf94dac99c579c8fdebe92f6d777"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.610/files-cli_Linux_64bit.tar.gz"
    sha256 "fa3b4a9ce4fa340bf0c0ad92a85f87ef224f4c306fc51b6a9f817286faeff663"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.610/files-cli_Linux_ARM64.tar.gz"
    sha256 "fd7c783da087e3052fc1d5fc244489ab96acc0622be6bd955335960de8b9956a"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
