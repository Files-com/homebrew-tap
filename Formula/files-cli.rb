# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.13.251"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.251/files-cli_macOS_64bit.tar.gz"
      sha256 "9ff4a026fad56dd45e5c141e498eae3e122445aaa1284a4721a0715c464b62b9"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.251/files-cli_macOS_arm64.tar.gz"
      sha256 "6384a937fca84049462990da768f60c2c6b18b17b79f96ee6bd52cc5f38be069"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.251/files-cli_linux_64bit.tar.gz"
        sha256 "d8fa232566924791ce9cfe995964f2690609aa3fad51db2ae3fa668f6d4b0943"

        def install
          @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
          bin.install "files-cli"
          bash_completion.install "completions/files-cli.bash" => "files-cli"
          zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
          fish_completion.install "completions/files-cli.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.251/files-cli_linux_arm6.tar.gz"
        sha256 "249026e299587704f2a6d6ac04eb8f5cf00f275cd3eea0d00ffee7a5523ab530"

        def install
          @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
          bin.install "files-cli"
          bash_completion.install "completions/files-cli.bash" => "files-cli"
          zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
          fish_completion.install "completions/files-cli.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.251/files-cli_linux_arm64.tar.gz"
        sha256 "47dc6a79deccb0c0f88ee07aa080aeba3e92a4072b421d4eeafda5454250f5bd"

        def install
          @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
          bin.install "files-cli"
          bash_completion.install "completions/files-cli.bash" => "files-cli"
          zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
          fish_completion.install "completions/files-cli.fish"
        end
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
