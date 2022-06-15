# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.3.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.62/files-cli_macOS_ARM64.tar.gz"
      sha256 "92406cdba765402e447334cdc9deec598340d4c2005fe8fc302c725a66a68381"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.62/files-cli_macOS_64bit.tar.gz"
      sha256 "0d9f7f5c628bb83ed4c53ba71f041b859a58394949aee506cd2987ecfb5404c3"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.62/files-cli_Linux_ARM6.tar.gz"
      sha256 "89d21a9c132098567a17ff2d4a1d5a21089888452d46d7f44d77253b5bc53e54"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.62/files-cli_Linux_ARM64.tar.gz"
      sha256 "8b8fbada2582de00564fb722b46f2f5f810f8c56cf22cb0c704b3d7c5f7c4eb6"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.62/files-cli_Linux_64bit.tar.gz"
      sha256 "94976131f92da3f6e963b665e11d0e406f010ca34226f8bb4f6a16236f3be40d"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
