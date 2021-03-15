# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.433"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.433/files-cli_macOS_64bit.tar.gz"
    sha256 "9ef49c8fa392644042356d0a16bb13e591b8025798b3c60355484ad136615f61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.433/files-cli_Linux_64bit.tar.gz"
    sha256 "d300cc973123226e544d2f73a566403df0392e109f44f74e96bff5bd02e921f4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.433/files-cli_Linux_ARM64.tar.gz"
    sha256 "925c724e3109976d753a65369f52116231b9511d326cd8790aff32603793ba78"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
