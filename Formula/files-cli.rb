# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.480"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.480/files-cli_macOS_64bit.tar.gz"
    sha256 "9c5217f8346bdf1fe0f1c8c6619d018afe51dae332328cac9c0b1275cd06f6b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.480/files-cli_Linux_64bit.tar.gz"
    sha256 "2e79b61257a95bb18c8bb5d6064f3a54d39e72112593832a4eb5ae00dd206466"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.480/files-cli_Linux_ARM64.tar.gz"
    sha256 "c8dd21b18a769fc9ef201c76dbe25e6dd06f941881e893818af36cc674eb525b"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
