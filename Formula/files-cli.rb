# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.5/files-cli_macOS_ARM64.tar.gz"
      sha256 "4ff5ff518e306d7ec910159e0489b9935fa3774ed9b9a76968cd2c4f7c95859c"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.5/files-cli_macOS_64bit.tar.gz"
      sha256 "8cb3df39cae5dd7dfccc2b79c40991aec34f2a3f71e8554b7efdf102465405e3"

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
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.5/files-cli_Linux_ARM6.tar.gz"
      sha256 "42fefccc346460138085cbebcbdaaa81bdcb0e2c9821f76d3e71fd322d6484ef"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.5/files-cli_Linux_ARM64.tar.gz"
      sha256 "6cd8a76e8d805ff270a45adffd71477c9678c42476eb0fc660edfac7f4f2b24a"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.5/files-cli_Linux_64bit.tar.gz"
      sha256 "f182c459eda40c09e2dc71e6e103b71d8cc26c0dc8956cc8a188d19092fa7c59"

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
