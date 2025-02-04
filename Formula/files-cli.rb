# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.13.241"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.241/files-cli_macOS_64bit.tar.gz"
      sha256 "f2c68bbff36ed87260de0c6ab5a3c7759864188dad8e1522880b309819b98b66"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.241/files-cli_macOS_arm64.tar.gz"
      sha256 "a421c245224452eb0a1bf26f533bf243277e79a1c9f2e8063af52fc8b3604d1a"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.241/files-cli_linux_64bit.tar.gz"
        sha256 "4c20fc079c9dae0b1bd58b507ba633a71b46f38369614532410f2b10679b5105"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.241/files-cli_linux_arm6.tar.gz"
        sha256 "f1fa7de5d735af5a2b2512a1b0e7cf1a9e14acb83c008b4602158520adaead7b"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.241/files-cli_linux_arm64.tar.gz"
        sha256 "44e1e3085ea3d404f9708b677044ed461885a45cae9fdf4087ca2c8a5bcfd684"

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
