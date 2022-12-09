# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.1/files-cli_macOS_ARM64.tar.gz"
      sha256 "c7833a2cdb4eaa3dd55ee4c9caa9bba6e2ea404f67a8e0f5845e0f1ed4c23944"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.1/files-cli_macOS_64bit.tar.gz"
      sha256 "abf389a1c63a7fe3c6092542e7a983a8325460eb874483f9c6946e2aa8bdf196"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.1/files-cli_Linux_ARM6.tar.gz"
      sha256 "51b0f02638a9e14a074bc6b2d60c606f51fdc413547160dfef2ba17ce23ad232"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.1/files-cli_Linux_ARM64.tar.gz"
      sha256 "128323d2edda4928962de995c9c8e455c9dfd9f0f42c3ec1a74bcf896023e41d"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.1/files-cli_Linux_64bit.tar.gz"
      sha256 "eda10a514c345c192b3051c5d424ad01d05754c8dba3d7d86acbb82e00263c00"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
