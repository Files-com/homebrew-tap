# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.616"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.616/files-cli_macOS_64bit.tar.gz"
    sha256 "8df6f048949ace142b7347a548e0045617cd87344b9109b46752503a6c80e64f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.616/files-cli_Linux_64bit.tar.gz"
    sha256 "3bc420eb29963303db90b0aadf4efd03d4cfddc41829e1af9dce242ed7b6a1fe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.616/files-cli_Linux_ARM64.tar.gz"
    sha256 "aa6a9e8e1f5cecc40b70a84b3f03c60a56e9aa5fa64ada39396b86b91fc57814"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
