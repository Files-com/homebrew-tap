# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1139"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1139/files-cli_macOS_64bit.tar.gz"
      sha256 "e69f9d1743a008e186daea9d26ce2c72519a6cf8e5f6b623be0083ce637d3347"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1139/files-cli_Linux_64bit.tar.gz"
      sha256 "16f59b3abec087e9a585340c47b1e2372ef725413422a363ec88114231e86a6e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1139/files-cli_Linux_ARM64.tar.gz"
      sha256 "8bc3cf90f9d4c2c28024de4f0a9894b8cfed79ea5c9b64e5c3b3b47beea58018"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
