# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1223"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1223/files-cli_macOS_64bit.tar.gz"
      sha256 "d0d5a8c4889560aaa59a4aa8fabcb6538643d24e53bd33197fb72347247414a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1223/files-cli_Linux_64bit.tar.gz"
      sha256 "47e8f4fe656aab7c057e15310d1b22afb5205c535ab8d2726a2f80f53a2269d7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1223/files-cli_Linux_ARM64.tar.gz"
      sha256 "b894b28a0e5538c08d46da4923aab7e5a59931df2ce3528390dee0ca542a6eb4"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
