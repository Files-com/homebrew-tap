# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1162"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1162/files-cli_macOS_64bit.tar.gz"
      sha256 "946549c0a46be14999d663e338222689154247f94bfc31c81b61cb76e19b1f1e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1162/files-cli_Linux_64bit.tar.gz"
      sha256 "254bff96b0f65f3b8a99bd906ce54dfece928bd6fc3f3f936971bab44a5cd8cb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1162/files-cli_Linux_ARM64.tar.gz"
      sha256 "74867ac29a8db799f8c1ca3abed86ea2e8c0c739df2a2c92e39a293760b8a57a"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
