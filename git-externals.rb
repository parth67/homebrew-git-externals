class GitExternals < Formula
    desc "Manage external Git repositories like SVN externals"
    homepage "https://github.com/parth67/git-externals"
    url "https://github.com/parth67/git-externals/archive/v1.0.1.tar.gz"
    sha256 "8d233842dd296bc972883d4d68bc1eaef95afdc67aece0c9565c0da29694cc76"
    license "MIT"
    version "1.0.1"

    depends_on "git"
    depends_on "jq"

    def install

        bin.install "git-externals.py" => "git-externals"
        man1.install "git-externals.1"
        bash_completion.install "completion/bash/bash_completion.sh"
        zsh_completion.install "completion/zsh/_zsh_completion"
      end

    def post_install
      system "mandb", ">/dev/null", "2>&1"
    end

    test do
      system "#{bin}/git-externals", "--help"
    end
  end
