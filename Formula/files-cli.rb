# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.225"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.225/files-cli_macOS_64bit.tar.gz"
    sha256 "4a98f64ede6e87b249b877429a0fe2c4f067d2609376e10044c96c4e2650ec23"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.225/files-cli_Linux_64bit.tar.gz"
    sha256 "1910043b4ce39f25b1f59404e9deae7e1836b4a2878b68b9affec52e17a236a3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.225/files-cli_Linux_ARM64.tar.gz"
    sha256 "d1c5dfe0efbbb8892c0d0599476f8d55328809d698de7f9924dbcb8152d171a3"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
