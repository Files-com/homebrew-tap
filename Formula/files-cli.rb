# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1034"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1034/files-cli_macOS_64bit.tar.gz"
    sha256 "b973de710360ea878f2fe70a672f9f799fda77c6881e2c2f2fe67b3800dc89bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1034/files-cli_Linux_64bit.tar.gz"
    sha256 "49dc296d71332821e3fd3c9a21e395651a7ca103375c9fb701489338b415f739"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1034/files-cli_Linux_ARM64.tar.gz"
    sha256 "4cfac002b2f17cc8b39395d314dc67b4366b57d4ec48b02697e35ab21a2ab11f"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
