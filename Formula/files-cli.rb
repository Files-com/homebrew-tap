# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.456"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.456/files-cli_macOS_64bit.tar.gz"
    sha256 "7f0f462119dd4663004cfecc76b983b3fa185cdb758cc0871a84ed5c8e6d7359"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.456/files-cli_Linux_64bit.tar.gz"
    sha256 "8cf4113b71e1bac377efa8b17397775e3b6047973b858e95eba12bccbd62de6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.456/files-cli_Linux_ARM64.tar.gz"
    sha256 "e9118bbcbfb8ccd0d4673448eba453f104bf8917caf726e469b3e1ec7ac3c521"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
