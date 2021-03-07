# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.295"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.295/files-cli_macOS_64bit.tar.gz"
    sha256 "57fa7036bebe4027d59286677abe65aed42d178c6dc55cd48d1a13e6c46be6d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.295/files-cli_Linux_64bit.tar.gz"
    sha256 "1a12d506d8d9a6e5e1aecf81b15e612a7a174f3152d63a4810868d0880a3a628"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.295/files-cli_Linux_ARM64.tar.gz"
    sha256 "7c6dc86bc208fdc8cf1012b0400d461620bf9fbaf4640bfc0517c521f6ddde09"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
