# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.634"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.634/files-cli_macOS_64bit.tar.gz"
    sha256 "beeeff47d6c902f4ea26f42c1407d6b4dd3a9efa544edb0e9f7cbcace70b4b4a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.634/files-cli_Linux_64bit.tar.gz"
    sha256 "fd3493e9c648cbfee2cc7b760dc9508a0a546f88335397eb850c8d556af018cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.634/files-cli_Linux_ARM64.tar.gz"
    sha256 "4871fba931ab27a610f49a2302c1f32ebe5c6b8b5bd148647b9407cd76e47012"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
