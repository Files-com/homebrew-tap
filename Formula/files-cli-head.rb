require "language/go"

class FilesCliHead < Formula
  head "https://github.com/Files-com/files-cli.git"
  
  depends_on "go" => :build
  
  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/Files-com/files-cli"
    bin_path.install Dir["*"]
    Language::Go.stage_deps resources, buildpath/"src"
    cd bin_path do
      system "go", "build", "-o", bin/"files-cli", "."
    end
  end
  
  test do
    system "#{bin}/files-cli --version"
  end
end

