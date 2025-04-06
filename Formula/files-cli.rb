# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.13.273"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.273/files-cli_macOS_64bit.tar.gz"
      sha256 "cf97c159f2e393624e351900cf744c38e552adacda7e4dd0dfcaf630367674c7"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.273/files-cli_macOS_arm64.tar.gz"
      sha256 "df9c998e92fd7cdc258e1abdc1fcd450f360a74662852206340eecdab798e9f5"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.273/files-cli_linux_64bit.tar.gz"
        sha256 "a6966bc84b84dbba4047cef16d6f5a768e7b6b2f5fce0dce18ae2cf1528dcd89"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.273/files-cli_linux_arm6.tar.gz"
        sha256 "b64161dbb1f12a9c6b57c8b05cab7d7aad344c7e130b6aff2ecb84fbb5bbadd4"

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
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.273/files-cli_linux_arm64.tar.gz"
        sha256 "2e7dd19d5d81f16526115d937c4280b55bf54d66ed75619120facc7be070f5a6"

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
