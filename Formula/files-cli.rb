# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.251"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.251/files-cli_macOS_64bit.tar.gz"
    sha256 "1a02252875bbb9c41f7dc995eddaff246d6a880a4a18a3bee34c19c1da083336"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.251/files-cli_Linux_64bit.tar.gz"
    sha256 "86608f3641c6ec4d007a8001056cc23c3c4f7652a79a608122948a2ff11cc3c4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.251/files-cli_Linux_ARM64.tar.gz"
    sha256 "c3439ff116afb9b6bd79b7bd6d00886ee9202f09a5b71731f0cdb70555ef40fd"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
