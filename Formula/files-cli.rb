# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.658"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.658/files-cli_macOS_64bit.tar.gz"
    sha256 "3fab07e5436c3210d0d3b3e0a8cd8fbd4343edb2b25741af52c6faccb1e1e801"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.658/files-cli_Linux_64bit.tar.gz"
    sha256 "ee066d2bca26f1e330c63516beef6dd29219b8da61a80c085e034a58dbc491ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.658/files-cli_Linux_ARM64.tar.gz"
    sha256 "76d9e930bf95ee8f19efbc975fe4abb563dc2414b211e39783428780fd827682"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
