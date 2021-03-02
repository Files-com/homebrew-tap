# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.244"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.244/files-cli_macOS_64bit.tar.gz"
    sha256 "2b4edcceb88aae8310890cdf9e9841801750529a83cc8bea756ab347bfaefc75"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.244/files-cli_Linux_64bit.tar.gz"
    sha256 "d488d8466c5d242097afc0d94935a50aa0c10cab46180ec4e34d00a7facf74a7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.244/files-cli_Linux_ARM64.tar.gz"
    sha256 "efc640754044683e5a6e4d4e23c40d98d4cbb02a528cea46b18037bf22d519c5"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
