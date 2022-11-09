# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.3/files-cli_macOS_ARM64.tar.gz"
      sha256 "f35e5d9e23c37470678bce09cca95a812230ab7d229c8ab4f4c3eb6479234042"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.3/files-cli_macOS_64bit.tar.gz"
      sha256 "f3861d7fc861a5b980d20fb910bf773bab7ac1df88b4f40650709801d85e9608"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.3/files-cli_Linux_ARM6.tar.gz"
      sha256 "8aa2a4b988aea175723e83caf8751631737c14886ce0e45ae82e6f6c849682eb"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.3/files-cli_Linux_ARM64.tar.gz"
      sha256 "e7bc8c589442db8394f482a61d2064630b10260cc07befc9a56e90f2169f3bab"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.1.3/files-cli_Linux_64bit.tar.gz"
      sha256 "27ccff9add8337cc043c2aea02f202a7072ce693b7b9b6c6984644ada0c83784"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
