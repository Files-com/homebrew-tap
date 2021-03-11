# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.376"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.376/files-cli_macOS_64bit.tar.gz"
    sha256 "0d29834fecff3f075923d3749a9a7f589b0bc04611228babb1fff1c74d087b76"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.376/files-cli_Linux_64bit.tar.gz"
    sha256 "9161c7d4ee90fde115a787f606408075447d3b21c7053d23b736010705f51f47"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.376/files-cli_Linux_ARM64.tar.gz"
    sha256 "dd61b9dae52c339aaf94df60232f9aafcb8da1b133c99aea922dfdec9fc53308"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
