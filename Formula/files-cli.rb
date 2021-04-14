# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.713"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.713/files-cli_macOS_64bit.tar.gz"
    sha256 "6934ba9c32b718d6ab08bf58793fd6ef009bb2f9868cb6f8b293d92b032ca724"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.713/files-cli_Linux_64bit.tar.gz"
    sha256 "32279edc1375b63ac8e20736f906cfa623fa9a64fc47bd769d681b0212e71df2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.713/files-cli_Linux_ARM64.tar.gz"
    sha256 "a1d9b7bb88c614f938b0df522fbcde4127529b8c190063f08101d36a024dd5df"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
