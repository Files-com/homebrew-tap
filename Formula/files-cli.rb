# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FilesCli < Formula
  desc "Files.com command-line interface"
  homepage "https://files.com/"
  version "1.0.695"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.695/files-cli_macOS_64bit.tar.gz"
    sha256 "b8efb03831aeef29ef9dcd7faa40da33427a164b64405eaa1f95c41bdc535f65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.695/files-cli_Linux_64bit.tar.gz"
    sha256 "4f55bd764b3cae501ba2fe94f2c35ce66596ba3dc1adf8512fa6dfd041e5df68"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Files-com/files-cli/releases/download/v1.0.695/files-cli_Linux_ARM64.tar.gz"
    sha256 "1cc70b5b28d235268654d8338197019c124e4bb254f981b76e90c615db7ff437"
  end

  def install
    bin.install "files-cli"
  end

  test do
    system "#{bin}/files-cli --version"
  end
end
