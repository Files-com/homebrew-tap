# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.341"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.341/files-cli_macOS_64bit.tar.gz"
    sha256 "3c965152503a92d4db871474b6b7a4d014af450ae3cd7289eb23276b8418847e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.341/files-cli_Linux_64bit.tar.gz"
    sha256 "e601cfd3f7963ae79edab31ae91cdd70739efeaad2c68760a20fcd3c06edc270"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.341/files-cli_Linux_ARM64.tar.gz"
    sha256 "2e1dc420dd129e25f4ed9557fe8bf3a9132fe81a8567baf06fcbb4e3bd82c09b"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
