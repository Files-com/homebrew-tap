# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.490"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.490/files-cli_macOS_64bit.tar.gz"
    sha256 "21f382185836dc517e7f3f5b7550946d3d866fb4284f50d9cebc7c805f0f1d13"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.490/files-cli_Linux_64bit.tar.gz"
    sha256 "2e530cc0f6af6c4289ec1e60b3f2b88c03ec2a1d62fa1d075fc11150518bf5df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.490/files-cli_Linux_ARM64.tar.gz"
    sha256 "cf63af24d068fed061354f70350926dd970fb3a37051f713daf6e936043a65e0"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
