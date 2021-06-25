# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1299"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1299/files-cli_macOS_64bit.tar.gz"
      sha256 "d5c4302015279bda1843be3a463ea80e07e976e020a937eabc35a3f3b8fffb1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1299/files-cli_Linux_64bit.tar.gz"
      sha256 "bba720eb5bfe30460f27cd47657da2bbdfb4da92646d0932523425c7aefd5f21"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1299/files-cli_Linux_ARM64.tar.gz"
      sha256 "544c799dd488b5d788cd2c9469a2d93974fc497010d95d4f9fced5300336e3a5"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
