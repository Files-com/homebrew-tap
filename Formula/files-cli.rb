# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.11/files-cli_macOS_ARM64.tar.gz"
      sha256 "8046a28fe0a928337646fdfdaf6e1ede85d35a4f4957a572188203b7d2c2e581"

      def install
        @last_version = `files-cli -v`.chomp.split("\n").last rescue ""
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.11/files-cli_macOS_64bit.tar.gz"
      sha256 "4fff98d481462d6ddf33d258c37e41d173057339b90a8cdf2b392ca0987c0260"

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
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.11/files-cli_Linux_ARM6.tar.gz"
      sha256 "2017b7404164601c70ebe2331d8cfd58239978377bf5cd57f5d6c5865e1ba396"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.11/files-cli_Linux_ARM64.tar.gz"
      sha256 "432b2ddde4a96d4388e6cca6318c2f021a0eea93269d6dd32c295c307231f2e2"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.2.11/files-cli_Linux_64bit.tar.gz"
      sha256 "339cde96422e306656e9658b84c4fc20b8646216d8c5a0270e5c13b8475d2abe"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  def post_install
    current_version = `#{bin}/files-cli -v --ignore-version-check`
    puts `#{bin}/files-cli changelog "#{[@last_version, current_version].uniq.reject(&:nil?).join("..")}" --ignore-version-check`
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
