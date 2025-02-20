class GitExternals < Formula
    desc "Manage external Git repositories like SVN externals"
    homepage "https://github.com/parth67/git-externals"
    url "https://github.com/parth67/git-externals/archive/v1.0.0.tar.gz"
    sha256 "a4660ccdb148db59425c7cd72d3117b7abd368e30f68a1df01d86fb9f5bd5ed8"
    license "MIT"
    version "1.0.0"
  
    depends_on "git"
    depends_on "jq"
  
    def install
      bin.install "git-externals.py" => "git-externals"
      man1.install "git-externals.1"
      bash_completion.install "git-externals-completion.sh"
      zsh_completion.install "git-externals-completion.sh"
    end
  
    def post_install
      system "mandb", ">/dev/null", "2>&1"
    end
  
    test do
      system "#{bin}/git-externals", "--help"
    end
  end
  