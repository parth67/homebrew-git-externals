class GitExternals < Formula
    desc "Manage external Git repositories like SVN externals"
    homepage "https://github.com/parth67/git-externals"
    url "https://github.com/parth67/git-externals/archive/v1.0.0.tar.gz"
    sha256 "0c7457073f19ef7f94682ca0d8f06a875cd3393c924b5b8fa0e6d4dde8dc96ec"
    license "MIT"
    version "1.0.1"

    depends_on "git"
    depends_on "jq"

    def install

        bin.install "git-externals.py" => "git-externals"
        man1.install "git-externals.1"
        bash_completion.install "completion/bash/bash_completion.bash" => "git-externals-completion.bash"
        zsh_completion.install "completion/zsh/_git-externals" => "_git-externals"
      end

    def post_install
      system "mandb", ">/dev/null", "2>&1"
    end

    test do
      system "#{bin}/git-externals", "--help"
    end
  end
