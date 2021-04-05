# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.611"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.611/files-cli_macOS_64bit.tar.gz"
    sha256 "cb736b32aa5df88dce6da6e1f38ad8acfebc685ec6e6ed4d350e398ac17067a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.611/files-cli_Linux_64bit.tar.gz"
    sha256 "1f447e0de43a71ba92ba09f2c7e945450db64f0bec7b15ecab344310bb1fd7cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.611/files-cli_Linux_ARM64.tar.gz"
    sha256 "7ccab0411a9a66fe465c375d914c680b235eff5bffe87b0740cebeb4250020a3"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
