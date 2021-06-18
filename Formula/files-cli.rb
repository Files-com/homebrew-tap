# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1193"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1193/files-cli_macOS_64bit.tar.gz"
      sha256 "63f001fc51670e971ccb3b80b44db3c4dfd1d207ee654dab4c7ae8700b8786eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1193/files-cli_Linux_64bit.tar.gz"
      sha256 "76fec9544dcdfda002be3f160b859ff3f167e64a27f9b85e29944d9aab3ab427"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1193/files-cli_Linux_ARM64.tar.gz"
      sha256 "cb2b8f24ee25750b9a85ed7fe569b479b89c9aaaabd063a4d9646628d5787402"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
