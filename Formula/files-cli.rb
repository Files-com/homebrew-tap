# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1490"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1490/files-cli_macOS_64bit.tar.gz"
      sha256 "c7fdc0b01186e3123ba8d438e0b2b3b35951bf689311da6a43bc1a30224f6a44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1490/files-cli_Linux_64bit.tar.gz"
      sha256 "d1ad8f4ed82c7107cfc030ade991c2f4a1a0bee55a55d8f58337e17b01ca83af"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1490/files-cli_Linux_ARM64.tar.gz"
      sha256 "039edb01a07d74c545574abab059f1ca6353788e42b03c29759d444c47bb8f65"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
