# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.712"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.712/files-cli_macOS_64bit.tar.gz"
    sha256 "a31dd0556e75903d5e958d27ef5ef49a9b70f3d6fa99350700aed8a9bf476d54"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.712/files-cli_Linux_64bit.tar.gz"
    sha256 "eba11adcc76d82c34e067b6003465d227cb357f637e50650aedae84d66a167f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.712/files-cli_Linux_ARM64.tar.gz"
    sha256 "dfcd6187ad0c896aa5ead32d5f25a7d206e83b608d09d4fee292a05edb013c43"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
