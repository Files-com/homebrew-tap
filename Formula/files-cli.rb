# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1142"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1142/files-cli_macOS_64bit.tar.gz"
      sha256 "a5b9472f7478a59e2edb67415eec21729578194dd8da0683518d152716575f5b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1142/files-cli_Linux_64bit.tar.gz"
      sha256 "ea2ff447ab3f1af18435eba3ebd1f3d93650c9906acf9cc2d9c0675c7cf8a823"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1142/files-cli_Linux_ARM64.tar.gz"
      sha256 "82d54687112af55b506bb14610da2f9f70e53ccc5e39eb8700f2418ac689128f"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
