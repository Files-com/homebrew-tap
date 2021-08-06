# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1616"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1616/files-cli_macOS_64bit.tar.gz"
      sha256 "cf96a3865de575b9945021e16fff75cbee15fbe53498858cbcb0c8c8581144f5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1616/files-cli_macOS_ARM64.tar.gz"
      sha256 "69af079fe34de4c412452175e440b86ba5d519697e9a6e4068baefef07e3b934"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1616/files-cli_Linux_64bit.tar.gz"
      sha256 "01332bee5bb6fd18bc08605ed0fdaade102e7ce80dabe9579f7634669d3aa9aa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1616/files-cli_Linux_ARM64.tar.gz"
      sha256 "2aae52e706755020eb77882ce6366edc2e81d2e7c069f96266dc5f090e6ebc10"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
