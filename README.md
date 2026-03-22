# Dotfiles

This repository contains my personal system configurations (managed entirely via [GNU Stow](https://www.gnu.org/software/stow/)).

## Setup a New Machine (Restowing)

If you are setting up a brand new Mac, or if you accidentally deleted your configurations locally, you can near-instantly retrieve everything perfectly mapped:

### 1. Install Stow
```bash
brew install stow
```

### 2. Clone the Repository
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/Developer/github/dotfiles
cd ~/Developer/github/dotfiles
```

### 3. Restow (Re-create all Symlinks)
From inside the `/dotfiles` directory, run this command to rebuild all configuration symlinks in your home (`~`) directory:
```bash
stow -t ~ zsh starship lsd
```

> **Note:** The `-t ~` flag explicitly passes your home folder as the destination target for the symlinks instead of the default parent directory.

---

## Adding New Configurations
When you are ready to track a new configuration file under dotfiles (for example, `~/.gitconfig`):

1. **Create a directory** matching the desired stow package name:
   ```bash
   mkdir git
   ```
2. **Move the existing config** out of your home directory and into the new folder:
   ```bash
   mv ~/.gitconfig git/
   ```
3. **Stow it:**
   ```bash
   stow -t ~ git
   ```
Everything is instantly symlinked and tracked in Git.
