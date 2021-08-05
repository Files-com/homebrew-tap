# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1605"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1605/files-cli_macOS_64bit.tar.gz"
      sha256 "44e7d0184171fa3c87e869f4c798f072bea755eec8c86245eecfb0150f090ec3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1605/files-cli_macOS_ARM64.tar.gz"
      sha256 "aabeff4a8ff6cf068568cf84f6fcca40d7b0573b20649628abe7005978a8c26e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1605/files-cli_Linux_64bit.tar.gz"
      sha256 "742361424cffde42eb85c617cb251be2939ff76eeaa2773d79791d766a06fdcc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1605/files-cli_Linux_ARM64.tar.gz"
      sha256 "b09f933f8241cbd7d81babe87db7ea237f571fbe472ae44bffd0d7b7316aa6f7"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
