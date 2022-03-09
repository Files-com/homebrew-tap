# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.3.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.31/files-cli_macOS_ARM64.tar.gz"
      sha256 "61eaf85df16013f2a412b0e5771c925b9b019b2887c90aa9e0999a99a2756d5a"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.31/files-cli_macOS_64bit.tar.gz"
      sha256 "3efec65ccb401dbf0a4b510f53faa70f4203b1c39b99535cbc4b507e453215a8"

      def install
        bin.install "files-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.31/files-cli_Linux_ARM6.tar.gz"
      sha256 "9217d6876a50e6c7c6f4a004a6cfe81141b79ebd4304aee64a7289b1f2bc768d"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.31/files-cli_Linux_ARM64.tar.gz"
      sha256 "79ac4cfc38004a39a18682434650ade1ddc870558af04dff110c89fa4b9ab234"

      def install
        bin.install "files-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.3.31/files-cli_Linux_64bit.tar.gz"
      sha256 "ac43724344a2bed4d88da6ff66eefcff312bb969d094765b19c3bd2943ee6e6f"

      def install
        bin.install "files-cli"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
