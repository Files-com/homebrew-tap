# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.1/files-cli_macOS_ARM64.tar.gz"
      sha256 "04420680b85edf44847a40cd4e66e41e6f6bb4f1f92350969a8305da1f044484"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.1/files-cli_macOS_64bit.tar.gz"
      sha256 "5fa8850e8e1221eb4e83606ef560166797fd445078d8b20c84402cd00f93ad15"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.1/files-cli_Linux_ARM6.tar.gz"
      sha256 "314ff2587a4b657495dde7f350af080de8381b3ee5c8716b3756213b42543ba2"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.1/files-cli_Linux_ARM64.tar.gz"
      sha256 "6fa1500d555324fb7a8733de0861afe901adb925a9333ca7627c24e82a30c91f"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.1/files-cli_Linux_64bit.tar.gz"
      sha256 "9d03537801904999c8b3d106da869fba2473bc14c8fbfad304258ffe171660e7"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
