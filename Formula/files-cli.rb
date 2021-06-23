# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1263"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1263/files-cli_macOS_64bit.tar.gz"
      sha256 "ed8b2de6118c07f3c8a8f89fbf6d26fb495e57bde0a3e931cd087264bbbec5dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1263/files-cli_Linux_64bit.tar.gz"
      sha256 "d2e3918dc99a4e4eb23472b7957debf5a3aa47cc337be90781444e188a82261d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1263/files-cli_Linux_ARM64.tar.gz"
      sha256 "dd4cd10c077a6fd2a58a328b3efd25c8c7fe36874eb86624b8f12acabb1d2b06"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
