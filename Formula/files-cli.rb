# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1622"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1622/files-cli_macOS_64bit.tar.gz"
      sha256 "3be87422f787db61c9dcbe5207edd7508959ee2e500531f3e424162ad10aea7e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1622/files-cli_macOS_ARM64.tar.gz"
      sha256 "ecaed0c7aae8098f4cf507b29c81e605c9600fcc20e72c0605eb5b469cde476d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1622/files-cli_Linux_64bit.tar.gz"
      sha256 "826eecd7d9eb38ffba7c8867295430941a8fc9f89f8490d113163c135c8f68e4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1622/files-cli_Linux_ARM64.tar.gz"
      sha256 "c636d659c94a6e369312ecc8dc39dbc62e1b507375c6edc46ad5233e7a2986e0"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
