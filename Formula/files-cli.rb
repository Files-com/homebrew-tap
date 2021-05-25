# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1028"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1028/files-cli_macOS_64bit.tar.gz"
    sha256 "2f34b6dcef7e02f99a8f3718a96c449d115ebc9a49c76bdfe8287af329fa738f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1028/files-cli_Linux_64bit.tar.gz"
    sha256 "4616b8e5c177b7230c06a13c5d9dc10e4d4e0ca79c3e813d483034570e4b4374"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1028/files-cli_Linux_ARM64.tar.gz"
    sha256 "afcd343215931b1817065d4f29916c5373ca639a88ec97efb8a3ff9d391fa0e4"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
