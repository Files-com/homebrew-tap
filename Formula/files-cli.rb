# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.452"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.452/files-cli_macOS_64bit.tar.gz"
    sha256 "13ba0f85d7ee2e94d4a5ca08fb29b1928794ca3237b8e249c1a5a9e9da49290d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.452/files-cli_Linux_64bit.tar.gz"
    sha256 "f5e668210772555b8b9152af07148681c2940e8c5920ea657ae9b9805a25b1b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.452/files-cli_Linux_ARM64.tar.gz"
    sha256 "232e63bb295df6b0930862c0a45877b03fb9890ecc2b9a204a4a2e3b980c6e18"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
