# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.13.127"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.127/files-cli_macOS_64bit.tar.gz"
      sha256 "f7989137f064e6021343a847c452386c6e9cc5c62a6328270876e17f0e05077c"

      def install
        @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    on_arm do
      url "https://github.com/Files-com/files-cli/releases/download/v2.13.127/files-cli_macOS_arm64.tar.gz"
      sha256 "efde9a395921b38b6f149ffc84b52007cb5435be85a9c3c5cbbfaa8c9b5aac47"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.127/files-cli_linux_64bit.tar.gz"
        sha256 "755008315f3e5883695e3154bb8e35c5a1749fb48ed0ea74ca1d2ce868617baf"

        def install
          @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
          bin.install "files-cli"
          bash_completion.install "completions/files-cli.bash" => "files-cli"
          zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
          fish_completion.install "completions/files-cli.fish"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.127/files-cli_linux_arm6.tar.gz"
        sha256 "ba70c723841085b12b12ffe0d75959e0f315934da04f500f965f4d77b4b646d5"

        def install
          @last_version = JSON.parse(`brew info files-cli --json`, symbolize_names: true).first[:linked_keg] rescue nil
          bin.install "files-cli"
          bash_completion.install "completions/files-cli.bash" => "files-cli"
          zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
          fish_completion.install "completions/files-cli.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Files-com/files-cli/releases/download/v2.13.127/files-cli_linux_arm64.tar.gz"
        sha256 "bcbefbf1a6c791332a1e5f78f59ca04b2a8d41fd2fae98369bc092c3020cce13"

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
