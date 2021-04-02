# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.579"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.579/files-cli_macOS_64bit.tar.gz"
    sha256 "83a1364451557d1c0d131d84203f02d641fe4386dc58a6f85f5d6aaba5560aa4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.579/files-cli_Linux_64bit.tar.gz"
    sha256 "810827f896c5fae4d29b698e843001275a11150ebfe0117c1cd968b59332902d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.579/files-cli_Linux_ARM64.tar.gz"
    sha256 "748d86c04e87d7ae748a2a02deb6636e30dc8646792e5dc38f82520ab8bee8c2"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
