# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "2.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v2.3.6/files-cli_macOS_ARM64.tar.gz"
      sha256 "b57310f87130619a49381b231b36a8a28cfbc1992977cb5ff667a10e5cc86fa7"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.3.6/files-cli_macOS_64bit.tar.gz"
      sha256 "e1f0db025e12dc5105f48e0399f09db48e3b2796d86a583b83c5a65459674d10"

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
      url "https://github.com/Files-com/files-cli/releases/download/v2.3.6/files-cli_Linux_ARM6.tar.gz"
      sha256 "150cae07b6bf0dc0296ead033eff2276d76d09be94412ffd1dfa683e6a54a5c6"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v2.3.6/files-cli_Linux_ARM64.tar.gz"
      sha256 "f1e87d5ffa695ec6ea3d6e1edec99a0ca569f6ab4568aa2e4dba744a4dfad568"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v2.3.6/files-cli_Linux_64bit.tar.gz"
      sha256 "6182061414af4d2315d73bbc2e8f220de9c495140f515f042425015484cf471b"

      def install
        bin.install "files-cli"
        bash_completion.install "completions/files-cli.bash" => "files-cli"
        zsh_completion.install "completions/files-cli.zsh" => "_files-cli"
        fish_completion.install "completions/files-cli.fish"
      end
    end
  end

  def post_install
    puts `#{bin}/files-cli changelog "$(#{bin}/files-cli -v)" --ignore-version-check`
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
