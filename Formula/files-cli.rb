# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.290"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.290/files-cli_macOS_64bit.tar.gz"
    sha256 "0d240e978b4d3a59a14a8090276f91e6a13f7e79066bc9e66b5815f33ff74c3b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.290/files-cli_Linux_64bit.tar.gz"
    sha256 "ba354e0351916fa701bb0a2f1046ce201c46882475b60d49efa1c36f59fd2ede"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.290/files-cli_Linux_ARM64.tar.gz"
    sha256 "902c213e72e03a214bb4d36b89e264c2a75d80896a082ba686722aa01f377bd1"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
