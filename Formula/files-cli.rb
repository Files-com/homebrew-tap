# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.1542"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1542/files-cli_macOS_64bit.tar.gz"
      sha256 "a69403121be2bb308f3b28f64665cc462e5acb7e8e776fa691caa801acfef5d9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1542/files-cli_Linux_64bit.tar.gz"
      sha256 "71dbc34f34892cc90680e9dac5712ba0ba90e98186db97f519830433962d9454"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.0.1542/files-cli_Linux_ARM64.tar.gz"
      sha256 "b60d267b1c6d7ac47b014fcd7e97f0dd76c91a64110035d640b0269147257126"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
