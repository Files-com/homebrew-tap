# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1549"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1549/files-cli_macOS_64bit.tar.gz"
      sha256 "921ecf217c91dbaace85ace37d7cb3d769d9e0cb60b873435c01beb8e09eadec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1549/files-cli_Linux_64bit.tar.gz"
      sha256 "1569059b87bf537ced715c82e37b1ea9a69ac9df0e103e2b4b833b357973d20b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1549/files-cli_Linux_ARM64.tar.gz"
      sha256 "80ae72ffa3f824e38b3f8db21a21b53ed8e3baf9d7c349f5fc559ac38e90e5f3"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
