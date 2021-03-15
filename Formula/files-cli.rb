# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.432"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.432/files-cli_macOS_64bit.tar.gz"
    sha256 "65e3bd306350b14e96707f98e37cfab7ca65b6384279da167a9befd60d7261cc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.432/files-cli_Linux_64bit.tar.gz"
    sha256 "ad453c27bc9473160a90ff917b02b1560de0e48686a4936153f87bc1b3b1e309"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.432/files-cli_Linux_ARM64.tar.gz"
    sha256 "ba45a03105972cf73d557057048f8ec78c037935729f565814286ebb94f76428"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
