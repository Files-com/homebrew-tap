# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.546"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.546/files-cli_macOS_64bit.tar.gz"
    sha256 "6e47485ab57469e94f3647a2a63772b1d1e764ee2cbca21d6064b462fc4ce519"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.546/files-cli_Linux_64bit.tar.gz"
    sha256 "f3311455a76152968ef593d8f088a1e04bb231707774a83043897cc7887b7e8a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.546/files-cli_Linux_ARM64.tar.gz"
    sha256 "b91b2c584330a64dbe6007f22d01e4e7f13658b803deab5685cb3b33ff098d9e"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
