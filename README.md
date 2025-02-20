# **🍺 Homebrew Tap for `git-externals`** 🚀  
*A Homebrew package for managing external Git repositories like SVN externals*  

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)  
[![GitHub stars](https://img.shields.io/github/stars/parth67/homebrew-git-externals?style=social)](https://github.com/parth67/homebrew-git-externals)  
[![GitHub issues](https://img.shields.io/github/issues/parth67/homebrew-git-externals.svg)](https://github.com/parth67/homebrew-git-externals/issues)  

---

## **📖 What is `git-externals`?**
`git-externals` is a **Git subcommand** that helps manage external repositories within your project. It works similarly to **SVN externals**, providing a structured and Git-friendly way to track dependencies.

✅ **Supports external repositories** (branch or commit-based tracking)  
✅ **Clones repositories into a hidden directory** to keep your workspace clean  
✅ **Creates symbolic links** for easy access  
✅ **Auto-completion for Bash & Zsh**  
✅ **Works on Linux & macOS**  

---

## **📥 Installation**
To install `git-externals` using Homebrew, follow these steps:

### **🔹 Step 1: Add the Tap**
```sh
brew tap parth67/git-externals
```

### **🔹 Step 2: Install `git-externals`**
```sh
brew install git-externals
```

---

## **🚀 Usage**
Once installed, `git-externals` is available as a **Git subcommand**.

### **🔹 Add an External Repository**
```sh
git externals add <name> <url> <path> --branch <branch>
```
or pin to a commit:
```sh
git externals add <name> <url> <path> --revision <commit-hash>
```
Example:
```sh
git externals add fw git@bitbucket.org:user/firmware.git fw --branch main
```

### **🔹 Update an External Repository**
```sh
git externals update <name> --branch <new-branch>
git externals update <name> --revision <new-commit-hash>
```
Example:
```sh
git externals update fw --branch develop
```

### **🔹 Remove an External Repository**
```sh
git externals remove <name>
```

### **🔹 List All Externals**
```sh
git externals list
```

### **🔹 Sync External Repositories**
```sh
git externals sync
```

### **🔹 Help**
```sh
git externals --help
```

---

## **📦 Upgrading**
To update `git-externals` to the latest version:
```sh
brew upgrade git-externals
```

---

## **🗑️ Uninstalling**
To remove `git-externals` from your system:
```sh
brew uninstall git-externals
```

---

## **🛠 Auto-Completion**
Auto-completion for `git-externals` is available for **Bash** and **Zsh**.

### **🔹 Enable Bash Completion**
```sh
source /etc/bash_completion.d/git-externals
```
or add to `.bashrc`:
```sh
echo "source /etc/bash_completion.d/git-externals" >> ~/.bashrc
source ~/.bashrc
```

### **🔹 Enable Zsh Completion**
```sh
mkdir -p ~/.zsh/completions
echo 'fpath=(~/.zsh/completions $fpath)' >> ~/.zshrc
autoload -Uz compinit && compinit
source ~/.zshrc
```

---

## **📜 Man Page**
You can access the manual using:
```sh
man git-externals
```

---

## **🤝 Contributing**
We welcome contributions! If you'd like to improve this formula, please submit a **pull request** or open an **issue**.

### **🔹 Clone the repo & contribute**
```sh
git clone https://github.com/parth67/homebrew-git-externals.git
cd homebrew-git-externals
```

1. **Create a new branch**  
   ```sh
   git checkout -b feature/update-formula
   ```
2. **Make changes & commit**  
   ```sh
   git commit -am "Updated formula for version X.Y.Z"
   ```
3. **Push & create a pull request**  
   ```sh
   git push origin feature/update-formula
   ```

---

## **📝 License**
This project is licensed under the [MIT License](LICENSE).

---

## **📩 Support**
Having issues? Feel free to open an [issue](https://github.com/parth67/homebrew-git-externals/issues) or reach out.

---

### **🚀 Now You Can Manage Your Git Externals with Ease!** 🎯  
Would you like support for **Linuxbrew** as well? 😊