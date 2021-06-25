# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1307"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1307/files-cli_macOS_64bit.tar.gz"
      sha256 "ad9904bc8daace6c9a4db421a70300eaf299ddb30f12b41930c14a2b265e4f59"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1307/files-cli_Linux_64bit.tar.gz"
      sha256 "9b346fca309b961a8939386fcc117c5b250f991700a96b05f8b7eb2997218568"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1307/files-cli_Linux_ARM64.tar.gz"
      sha256 "e99815c3cf58f9a343967f85b3dfb92e33b0d184de4e6d818a251a7327a9c680"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
