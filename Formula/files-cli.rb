# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1077"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1077/files-cli_macOS_64bit.tar.gz"
      sha256 "bd84aba170fb843deca9bb0ace07163a1bebdae6f330c938db99edc4aa6e803f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1077/files-cli_Linux_64bit.tar.gz"
      sha256 "1106ef709ac0b403633157b1fd4a90ce2338ad222e793c74d57f4f44f17e9e24"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1077/files-cli_Linux_ARM64.tar.gz"
      sha256 "9ea27055bf616540bbb2a99543e968506a3f2ee8642b8eb3caea6cc5598012d4"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
