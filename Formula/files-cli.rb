# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.6.6/files-cli_macOS_ARM64.tar.gz"
      sha256 "f1f0dbeb590f4874a55a64289c51ac26b8d0b3c25523e8442160594a6bf4ee41"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.6.6/files-cli_macOS_64bit.tar.gz"
      sha256 "4b9d976022f6d3851f9316babc4028c3e23127641df3319ad26716e62fcf8ef4"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.6.6/files-cli_Linux_ARM6.tar.gz"
      sha256 "0a3c4818130a0a6810e69911330ef45595e2c808eeebfe9336eda94d13320972"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.6.6/files-cli_Linux_ARM64.tar.gz"
      sha256 "347fc44fb379e2b78b1bfaef8a864771e31e706bc76f5571c300d95d815c18fa"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.6.6/files-cli_Linux_64bit.tar.gz"
      sha256 "3e82dc37de2fb90e740d6cceb0a9b3493ae7ee61b1ea75eca73b8e65ee1c69ce"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  def post_install
    puts `#{bin}/files-cli changelog #{@last_version ? @last_version + '...' : ''}"$(#{bin}/files-cli -v)" --ignore-version-check`
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
