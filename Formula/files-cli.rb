# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.297"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.297/files-cli_macOS_64bit.tar.gz"
    sha256 "87652dce5609bd471e0e2afeec0898b473ed654703ff77bb366223f8c55fd49e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.297/files-cli_Linux_64bit.tar.gz"
    sha256 "e9cc086360ebb8c1a6250ee065f6a1c7be6c8c53ec410c5dc508a596b3762312"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.297/files-cli_Linux_ARM64.tar.gz"
    sha256 "dfd957c2ba662028cd5a94dcab743b1abdc60c1e515b6c1a441aaa6c40025bd4"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
