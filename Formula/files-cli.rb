# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1176"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1176/files-cli_macOS_64bit.tar.gz"
      sha256 "1575e2bdd703c020f4dbf2b803b347a466eca3036839a3db8c9c6ee4d6c4625c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1176/files-cli_Linux_64bit.tar.gz"
      sha256 "3edef1131221dec632d17250609688faf51786f160e720ce62338f21aaa4fdcf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1176/files-cli_Linux_ARM64.tar.gz"
      sha256 "54b9ef8ffe6c018261d93cbb27c6e9674defa7100d800af7ef5466d916a70ee9"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
