# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1157"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1157/files-cli_macOS_64bit.tar.gz"
      sha256 "22d46db35c3523157309dc070d37885cbf86333ec0fa16a6b099a7994fca8006"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1157/files-cli_Linux_64bit.tar.gz"
      sha256 "2d4fb4c047ada3b412710632201e1685781bc3191e1cc90eb5f17eaaa1ecf7b6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1157/files-cli_Linux_ARM64.tar.gz"
      sha256 "aa2735f167c1ad0ae7fe6bb17d41709fb5cf1ef10eeccdf461a518e078cd22d5"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
