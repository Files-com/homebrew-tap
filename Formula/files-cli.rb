# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.715"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.715/files-cli_macOS_64bit.tar.gz"
    sha256 "f172817d032b78550ae1714e92218e2c563c0ae4ae47d165299d47fdc707cd27"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.715/files-cli_Linux_64bit.tar.gz"
    sha256 "0e017c61887d4ba48815e05e78cce6dca7c6756bccdba3ab9867cb47c6089664"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.715/files-cli_Linux_ARM64.tar.gz"
    sha256 "60997700cc7b4bbbcc51b80c45a48653a1e4a5e1c34290cd9236e5d480fd11c6"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
