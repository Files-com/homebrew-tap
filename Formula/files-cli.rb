# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1671"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1671/files-cli_macOS_64bit.tar.gz"
      sha256 "f1455e087d12074b749c63acd089f77dfacbc704001f65968428e3ab4f668e7d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1671/files-cli_macOS_ARM64.tar.gz"
      sha256 "dc8dae612e886d05de7025127b9d86959548888e8074c42a220c1c8f47258279"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1671/files-cli_Linux_64bit.tar.gz"
      sha256 "c7d86e31536aab99ab562e1faa114c61134e1320f1afee7ca48bd43e48efa287"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1671/files-cli_Linux_ARM64.tar.gz"
      sha256 "dbe77201e5e8d76cfbe18b8a1d0962c128b6d28aece42679ed1d88d3f77a5372"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
