# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.574"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.574/files-cli_macOS_64bit.tar.gz"
    sha256 "744e086ccafd23ce2fbf10751579d286cf7b781119cc4b5d853f7d0d4e6b5bb2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.574/files-cli_Linux_64bit.tar.gz"
    sha256 "b4ba7e9d57804fafc800aab683c3913b1e7c4c163ea98e241efb5d0235636d89"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.574/files-cli_Linux_ARM64.tar.gz"
    sha256 "c13d69568332b496d310d7a4d014e39345c89005ebcc0d5a85ae88596212619d"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
