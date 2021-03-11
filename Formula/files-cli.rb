# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.374"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.374/files-cli_macOS_64bit.tar.gz"
    sha256 "fd1fb9e0887c4936d2471334283113df02b6f78078341fba192f7396b314c1e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.374/files-cli_Linux_64bit.tar.gz"
    sha256 "ad76cf9645825f90d1b6c96528caa7a67e72d23cc9d12f49f1a86d5cde9e882c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.374/files-cli_Linux_ARM64.tar.gz"
    sha256 "8fdb3d3dae6955727b34c02a4b10c986de069bdf6ab0c2e31298f176abfcd826"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
