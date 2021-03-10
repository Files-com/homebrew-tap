# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.361"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.361/files-cli_macOS_64bit.tar.gz"
    sha256 "362555610cabfa29ccafa00f0008836a3e315d98094cb5f01efbcb9d5aa18445"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.361/files-cli_Linux_64bit.tar.gz"
    sha256 "9d1c325a91ade430060887d52d15d10aa1429c5347be23fbf9c38c51dc1aa565"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.361/files-cli_Linux_ARM64.tar.gz"
    sha256 "2c5ea90ef0e14538550912216cfdf3089f98757f78acbbbc6ed0fc0062e6514d"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
