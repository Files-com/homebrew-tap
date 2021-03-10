# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.350"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.350/files-cli_macOS_64bit.tar.gz"
    sha256 "a02d900ea34f69d8a4f583b70bf7b2ffd219a6c0c78151ccbba899de7f275cb6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.350/files-cli_Linux_64bit.tar.gz"
    sha256 "c8c84df946c0c8c0fcd1bf23b70fef1ce858cf6bc30952cc56d5084100efec25"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.350/files-cli_Linux_ARM64.tar.gz"
    sha256 "6a3deaed9eb3cc95830f147594abd9a19432e34e36b1db665e18d2946fca3a65"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
