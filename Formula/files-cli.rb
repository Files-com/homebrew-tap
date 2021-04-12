# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.673"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.673/files-cli_macOS_64bit.tar.gz"
    sha256 "39c18c780114ada2be97fec5ef45aa3f02206fb241dbb0e8ca5d7b34165b168a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.673/files-cli_Linux_64bit.tar.gz"
    sha256 "95ee9bf5ac12a7c78b2bf7422723d37fa4569a4d383871511bbd5a3521abc11a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.673/files-cli_Linux_ARM64.tar.gz"
    sha256 "86b219eee8297e8c4278784e5c47818fe05d02713d19f24b3a18bdeb98505129"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
