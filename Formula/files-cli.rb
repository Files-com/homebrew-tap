# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.16/files-cli_macOS_ARM64.tar.gz"
      sha256 "248a3ef5bf0575536961e2d880b526e44c3ce96779d9624186304cff8e8f1228"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.16/files-cli_macOS_64bit.tar.gz"
      sha256 "6ec0f6e10aaf371cd71952b48281afa4fc7ed8181d1074b67c1ae709d8b58999"

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
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.16/files-cli_Linux_ARM6.tar.gz"
      sha256 "abe7f6694c07d54b1025e2069cf7c23e109193e048fea875cfafeedcf08a5561"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.16/files-cli_Linux_ARM64.tar.gz"
      sha256 "d08ef096de9172e33856611641275becab309407106a4d0b7d51a47d6951f233"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.16/files-cli_Linux_64bit.tar.gz"
      sha256 "3ed903d14842268022978ad9187558da967697fc734a02f916a2050ee0ce47a4"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  def post_install
    puts `files-cli changelog "$(files-cli -v)" --ignore-version-check`
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
