# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.633"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.633/files-cli_macOS_64bit.tar.gz"
    sha256 "fa2f29bd209fe68a897f1cfb01a67ab0589d73098ef36b462146fd483adb1ce5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.633/files-cli_Linux_64bit.tar.gz"
    sha256 "1455773f041981493d623a87bbce3fdbec5c2ca8fd0c54078e2af1aa5778a006"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.633/files-cli_Linux_ARM64.tar.gz"
    sha256 "7bf7d47008d9072e81643e487e874a7d6a97f53af9cb7bc39b59177c66c662be"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
