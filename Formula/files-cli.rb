# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.4/files-cli_macOS_ARM64.tar.gz"
      sha256 "dbfa2eafca0ad3bfff774b81eef29f4ad348dc7c725a3d2016e6bcfa921a640a"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.4/files-cli_macOS_64bit.tar.gz"
      sha256 "771ebb0c9e348d0bb15227d3182540072c68f879ac09e2a983bbb77de914a18e"

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
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.4/files-cli_Linux_ARM6.tar.gz"
      sha256 "dcfc8705964424cc3f784f000a624b326682ad99debd672c526f443fd99aaf10"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.4/files-cli_Linux_ARM64.tar.gz"
      sha256 "06169b7867689653bc202c1010974d9fd3be1763c971fdc9744276cedb96e16c"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.4/files-cli_Linux_64bit.tar.gz"
      sha256 "c6b350f3bde254047d9d206370d2f26bfb1733c52ad2bb061fd6232ddc42222c"

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
