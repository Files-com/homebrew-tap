# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1087"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1087/files-cli_macOS_64bit.tar.gz"
      sha256 "57dd6cee698c2a9da0196dc5ed49be6b0f8d3e92d3d1d7aca617e3b11e77bcee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1087/files-cli_Linux_64bit.tar.gz"
      sha256 "808902e6f1b9bf047232251e78e144715d913bfc0cd8da160c47e50c76704315"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1087/files-cli_Linux_ARM64.tar.gz"
      sha256 "0d7dab70888475e94212cbd00e2c62a9f2c5153f48aea48dc28bd44b77415146"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
