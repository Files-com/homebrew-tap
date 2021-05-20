# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1001"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1001/files-cli_macOS_64bit.tar.gz"
    sha256 "827ffb0671aab25bc18627e5bf2f397d2461b5a3b5e698b713d6bdf1c7f43268"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1001/files-cli_Linux_64bit.tar.gz"
    sha256 "77df8d489dc5ae984b8146eb6b6ce89caf1712aa8512e5fbd4885b11c76befdf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1001/files-cli_Linux_ARM64.tar.gz"
    sha256 "9644ad7b3a8997afff6b983c29998ac08e74bf82f87a57a1f059abfc9afc06b6"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
