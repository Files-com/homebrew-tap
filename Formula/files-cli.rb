# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1240"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1240/files-cli_macOS_64bit.tar.gz"
      sha256 "e06d278d96cce11f8d408817f5c51c435def3249571d8f169ee1091c482ec88d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1240/files-cli_Linux_64bit.tar.gz"
      sha256 "3f0ecf7c42eb89b3ac4c42c11b06c38571d776fd48a73f025b58670ead5d8780"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1240/files-cli_Linux_ARM64.tar.gz"
      sha256 "6ad38c36f93f417e1e0179839099f1e78c9bee4f4158060b6f781ac73a8e6be6"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
