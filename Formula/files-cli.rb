# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.13.258"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.258/files-cli_macOS_64bit.tar.gz"
      sha256 "dedfa150eb955c3a5134a9fae8b7e3c2130142ac42487227cb0cd93ede0f680e"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.258/files-cli_macOS_arm64.tar.gz"
      sha256 "90aee5bff779b57eef25e40431c9f14558f4c7618c50804b1ddcd715a1692a9c"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.258/files-cli_linux_64bit.tar.gz"
        sha256 "cadb6c4ea1c810f7085b95900a6605ccd75db40f7f27772b12ea6678cf486327"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.258/files-cli_linux_arm6.tar.gz"
        sha256 "704792142adb2138cea6c5764ad01b5b2bd44b0a64b5dc0910732aebe817f7cc"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.258/files-cli_linux_arm64.tar.gz"
        sha256 "095d46624acca6426c6d8602593179e948f6a3d9a29190d026f074521660d751"

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
