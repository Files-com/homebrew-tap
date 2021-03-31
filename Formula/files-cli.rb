# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.555"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.555/files-cli_macOS_64bit.tar.gz"
    sha256 "2c3e03fdea04250f8eb15ed1cfd77bdd3768918df65e4b545a85d4f54f63caae"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.555/files-cli_Linux_64bit.tar.gz"
    sha256 "1bb1008f085ff4643e5aaa185794d29e35b85be8efaf3ba51857f3d32907cee7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.555/files-cli_Linux_ARM64.tar.gz"
    sha256 "a0633ea6579531136a8a7a66e7db6ecdd3abf7c2890afa9bc7c8548ae4b634f7"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
