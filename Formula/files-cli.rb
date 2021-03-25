# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.500"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.500/files-cli_macOS_64bit.tar.gz"
    sha256 "ac612b344328e37efe0d38e0393fa022d8ed505a376685043b5b2648f4105545"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.500/files-cli_Linux_64bit.tar.gz"
    sha256 "52d48da08e3265ad618f4c4ab54cebd02d03c02ef33dc8b1c94626763778f25b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.500/files-cli_Linux_ARM64.tar.gz"
    sha256 "45975bdf86f8914b43a84db1c4c0d975a4c7bd6492c21a64bd54ad7d13c79b1e"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
