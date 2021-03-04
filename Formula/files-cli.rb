# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.282"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.282/files-cli_macOS_64bit.tar.gz"
    sha256 "3f48032a32b7d8680ec0ae4045d2629242f2e1e808f76190dd6af28047b83f31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.282/files-cli_Linux_64bit.tar.gz"
    sha256 "031b4021154cd6c3c428299b020f712ea9c969f04eb1eebac47a56802033c67b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.282/files-cli_Linux_ARM64.tar.gz"
    sha256 "1767aff2bea74b4f0d4396ec5e1727b736726e91a181238fcacc4efee6a8c991"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
