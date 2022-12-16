require "language/go"

class FilesCliHead < Formula
  head "https://github.com/Files-com/files-cli.git"
  
  depends_on "go" => :build
  
  def install
    @last_version = `#{bin}/files-cli -v --ignore-version-check`.chomp rescue ""
    ENV["GOPATH"] = buildpath
    ENV["CGO_ENABLED"] = "1"
    bin_path = buildpath/"src/github.com/Files-com/files-cli"
    bin_path.install Dir["*"]
    Language::Go.stage_deps resources, buildpath/"src"
    cd bin_path do
      system "go", "mod", "tidy"
      system "go", "mod", "download"
      system "go", "build", "-o", bin/"files-cli", "."
    end
  end
  
  def post_install
    current_version = `#{bin}/files-cli -v --ignore-version-check`
    puts `#{bin}/files-cli changelog "#{[@last_version, current_version].reject(&:nil?).join("..")}" --ignore-version-check`
  end
  
  test do
    system "#{bin}/files-cli --version"
  end
end

