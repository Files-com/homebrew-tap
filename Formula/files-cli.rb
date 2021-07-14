# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1410"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1410/files-cli_macOS_64bit.tar.gz"
      sha256 "387810f0b853d6278bee999261a77dc7176a3a5cea83042ba8a8a38f2905a27c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1410/files-cli_Linux_64bit.tar.gz"
      sha256 "1e003c8b20206a18ebde4f9525f8a1041994507033bc31ed132de829a81b1694"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1410/files-cli_Linux_ARM64.tar.gz"
      sha256 "bf8610f09d7235f07befc302a695b26056efc6cf4c1b0e303038396b64fae6bc"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
