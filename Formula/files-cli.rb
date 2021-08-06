# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.1.1613"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1613/files-cli_macOS_64bit.tar.gz"
      sha256 "df304419ba3f919eda3fd2781927c70e516bca29413f5e21f5f8299aee185861"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1613/files-cli_macOS_ARM64.tar.gz"
      sha256 "f07cc8d3c2abad37d9545126f8f1e28fd7a1a10f23166a4ee9842c45ab80022d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1613/files-cli_Linux_64bit.tar.gz"
      sha256 "9de32988b73acf5f47193c11b4c558ecc35d490640c38870bd21893ab85e1f3d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Files-com/files-cli/releases/download/v1.1.1613/files-cli_Linux_ARM64.tar.gz"
      sha256 "265426dc24e148a420c7f55b6c67a00c61cc871dbda2d889e791a507786f3553"
    end
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
