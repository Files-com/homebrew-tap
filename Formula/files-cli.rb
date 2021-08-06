# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1615"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1615/files-cli_macOS_64bit.tar.gz"
      sha256 "551de27ffa33ebd95c002501fd97505287cadae75b47276f3a383d7786a7a9a2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1615/files-cli_macOS_ARM64.tar.gz"
      sha256 "548f4f6ff388a427c328525d60aa425970b6cad083fb468b6f5825081f4c9f77"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1615/files-cli_Linux_64bit.tar.gz"
      sha256 "cbaecf07c7941af6ae424bfce3b5fe847ae01243ecca90a51c37e04a59a4643c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1615/files-cli_Linux_ARM64.tar.gz"
      sha256 "d86377c97887d570bf48ee2568b99b65f2cbca7b5734730f6ebb1c3f0b09ae5b"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
