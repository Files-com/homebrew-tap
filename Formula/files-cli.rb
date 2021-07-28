# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1584"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1584/files-cli_macOS_64bit.tar.gz"
      sha256 "f9fd9a2fa3a90b4248c360380525d76ccbf7edb67b0b36aadaac2b83625d407d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1584/files-cli_macOS_ARM64.tar.gz"
      sha256 "693b40e614e26e2181223b0741e5219b77c223ad4b9fb92c04c863d5c1f7089f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1584/files-cli_Linux_64bit.tar.gz"
      sha256 "2a8935f58017684ddaf8483b45c0d7f58650fbc906259ea453cffdff2b2e6876"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1584/files-cli_Linux_ARM64.tar.gz"
      sha256 "fd7044f10db64a1c119a2855ddcf35dece69988f1a13540a4dc7b582f875f4a1"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
