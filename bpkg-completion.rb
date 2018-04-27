class Bpkgcompletion < Formula
  version = "0.1.0"
  homepage "https://github.com/Cj-bc/bpkg-completion"
  url "https://github.com/Cj-bc/bpkg-completion/archive/v" + version + ".tar.gz"
  sha256 "571feb9d5811f667efbe956d47e6e363745ad5815c9cd5e79615d2aa1e1a677f"

  depends_on "bpkg"
  depends_on "bash-completion"

  def install
    (prefix/"etc"/"bash_completion.d").install "bpkg-completion.bash"
#    system "install", "bpkg-completion.bash" "#{etc}/bash-completion.d/"
  end
    
  test do
    system ".", "#{etc}/bash-completion.d/bpkg-completion.bash"
  end
