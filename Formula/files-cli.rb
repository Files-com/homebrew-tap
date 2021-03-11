# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.391"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.391/files-cli_macOS_64bit.tar.gz"
    sha256 "f19f08210af8a91d27bece91944ecd0021d39ad8370e22c73500140f5f5faf4c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.391/files-cli_Linux_64bit.tar.gz"
    sha256 "2eb1ceb7f2207996935fa315d9df85471b2c1d528597f8f8d61e0df99af1c38d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.391/files-cli_Linux_ARM64.tar.gz"
    sha256 "9b78bb9c2c99eecb8dced95df95eb0409294f09906c2669113242eea127e4b84"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
