# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.953"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.953/files-cli_macOS_64bit.tar.gz"
    sha256 "6fd63bb6799679087e60745b3eff06746289f26f4eff72dd99c9fe79ae5bf307"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.953/files-cli_Linux_64bit.tar.gz"
    sha256 "ebec730721bc7b882ceb90ebd4e9cee7471d69031b9b83a7f023821f5b779e82"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.953/files-cli_Linux_ARM64.tar.gz"
    sha256 "0022241682378838474f8387316053e72982bf1b591fb588a7fa25aac48c7941"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
