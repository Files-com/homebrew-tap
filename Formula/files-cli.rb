# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.13.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.24/files-cli_macOS_64bit.tar.gz"
      sha256 "8865b3a9536156b794a6c00d22d22380a9c0c48f6bca98e93cb93850366d4984"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.24/files-cli_macOS_arm64.tar.gz"
      sha256 "0cce96e02811a3a97b0468b622735ce0adeb1b009163c815077a49a32fc1e361"

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
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.24/files-cli_linux_64bit.tar.gz"
      sha256 "bc77608cefc50d142fcfe1c1f16c5ea7b31ccc364fd27cdda2abad40dceb8232"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.24/files-cli_linux_arm6.tar.gz"
      sha256 "8457ec734c664192261c91acfd008fff9292915cd2e01b13b3101b700d7b9eda"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.24/files-cli_linux_arm64.tar.gz"
      sha256 "73ee66c9458d77523b1810dd957f9b78915acc4c882632f87622613a94147b83"

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
