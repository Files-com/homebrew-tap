# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.13/files-cli_macOS_ARM64.tar.gz"
      sha256 "afe71505b4017e253b9bdacc8adee70782a35a2e6f9d98ae9ed05ef5f3f97b09"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.13/files-cli_macOS_64bit.tar.gz"
      sha256 "9e108f3faf1643c605c3ab7b5ea81b0c998dad5228e1fd59548b818f91c5d5cd"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.13/files-cli_Linux_ARM64.tar.gz"
      sha256 "478b33b30dbcdef0efd2bd19cab6e4175b4145a6c77a97c94a96808bbabf1b59"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.13/files-cli_Linux_64bit.tar.gz"
      sha256 "478ac4d0bfffad12a6711345300e57c777701eb113f407ac8a341f068ecb1627"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
