# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.3/files-cli_macOS_ARM64.tar.gz"
      sha256 "656a2c0b55c8e186c43c03c29fd959ab884ffe34c4a2e05924547f9eff21cf69"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.3/files-cli_macOS_64bit.tar.gz"
      sha256 "758f11e2fbddd0f34ff228ea7e93c9ecb89387fdee494f97f19a145b9f9f66c5"

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
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.3/files-cli_Linux_ARM6.tar.gz"
      sha256 "9984d666dfde6ab4563d2a9a99a9ffdc507cdd9fa3835f144ac7237c2a8605fb"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.3/files-cli_Linux_ARM64.tar.gz"
      sha256 "9dc8e62f07854cc97289e6b07d924ca3bb96db32e15c0bf924fc8a1a44e1810f"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.3/files-cli_Linux_64bit.tar.gz"
      sha256 "dd5933a3fe4df45432ad4aee05c595946d331826de0179bdb867a40dddea427f"

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
