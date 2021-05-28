# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1060"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1060/files-cli_macOS_64bit.tar.gz"
    sha256 "e021831fa09e828a4bdb065ca80bf9d7f97e9072c31e4167705f382ff2bb0bd8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1060/files-cli_Linux_64bit.tar.gz"
    sha256 "ea66345580fc7236a37a8d44a666c1a9d4c0d438be94e2a9f58bd5ab175a8f11"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.1060/files-cli_Linux_ARM64.tar.gz"
    sha256 "8af520313f97cffdd4c660a1e6d04cd1f6d0117e219d8ebb6e3b7dca69e08f1f"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
