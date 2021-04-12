# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.672"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.672/files-cli_macOS_64bit.tar.gz"
    sha256 "61600dc59dbc6efe4f2c0e7a41ba66acfdb73a07f3abae74cfc82f5195e95f72"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.672/files-cli_Linux_64bit.tar.gz"
    sha256 "e533df654700a828a54726398fb8e3a33ae1558dd3288ea034df14f7c2a2267f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.672/files-cli_Linux_ARM64.tar.gz"
    sha256 "01f31e1383567e541428e0631cf4567ec88778bb6b2a73cda1ebd2bad943ebf0"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
