# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Ensure Homebrew is prioritized in PATH (Fixes brew doctor warnings)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="" # Disabled to let Starship take over

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions web-search command-not-found colored-man-pages zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi
alias python='python3'

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ibg-solander='ssh ibg-solander'
alias uppmax-snic='ssh uppmax-snic'
alias uppmax-pelle='ssh uppmax-pelle'
alias uppmax-bianca='ssh uppmax-bianca'
alias uppmax-rackham='ssh uppmax-rackham'
alias reload='source ~/.zshrc'

alias ls="lsd --group-dirs first"
alias ll="lsd --group-dirs first -la"
alias tree="lsd --tree --group-dirs first --depth=2 2>/dev/null"


source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.4.1
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"

# Added by Antigravity
export PATH="/Users/dipc/.antigravity/antigravity/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# --- ZSH History Configuration ---
HISTFILE=$HOME/.zsh_history           # Where to save the history file
HISTSIZE=50000                        # How many lines to keep in the current session
SAVEHIST=100000                       # How many lines to save in the actual file

# --- History Options ---
setopt EXTENDED_HISTORY               # Add timestamps to history 
setopt SHARE_HISTORY                  # Share history between all sessions
setopt HIST_IGNORE_DUPS               # Do not record a command if it's a duplicate of the previous one
setopt HIST_IGNORE_ALL_DUPS           # If a new command is a duplicate, remove the older one from history
setopt HIST_REDUCE_BLANKS             # Remove extra blanks from each command line being added to history
setopt HIST_IGNORE_SPACE              # Don't record commands starting with a space
setopt INC_APPEND_HISTORY             # Append to the history file immediately, don't wait for shell exit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dipc/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dipc/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/dipc/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dipc/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/Users/dipc/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/Users/dipc/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# Total Dev Maintenance: Homebrew, Mamba, Snapshot, and Timer
nuke() {
    # 0. Start the timer
    local start_time=$(date +%s)

    # 1. Calculate Homebrew cache size before
    local brew_cache=$(brew --cache)
    local hb_before=$(du -sk "$brew_cache" 2>/dev/null | cut -f1 || echo 0)

    echo "🔄 1/4: Updating Homebrew..."
    brew update && brew upgrade
    
    echo "🧹 2/4: Scrubbing Homebrew caches..."
    brew cleanup -s

    # 2. Check for Mamba
    if command -v mamba &> /dev/null; then
        echo "🐍 3/4: Mamba detected. Updating and cleaning..."
        mamba update -n base conda mamba -y
        mamba clean --all -y
    else
        echo "ℹ️  Step 3/4: Mamba not found. Skipping conda maintenance."
    fi

    # 3. Snapshot Brewfile
    echo "📦 4/4: Taking Brewfile snapshot to ~/Developer/github/dotfiles/..."
    # Ensure the directory exists first
    mkdir -p ~/Developer/github/dotfiles/brew/
    brew bundle dump --force --describe --file=~/Developer/github/dotfiles/brew/Brewfile

    # 4. Final Calculations
    local hb_after=$(du -sk "$brew_cache" 2>/dev/null | cut -f1 || echo 0)
    local saved_kb=$((hb_before - hb_after))
    local saved_mb=$(echo "scale=2; $saved_kb / 1024" | bc)
    
    # Calculate duration
    local end_time=$(date +%s)
    local duration=$((end_time - start_time))

    echo "------------------------------------------"
    echo "✅ Maintenance complete!"
    if (( $(echo "$saved_mb > 0.1" | bc -l) )); then
        echo "📊 Recovered from Homebrew: **$saved_mb MB**"
    fi
    echo "📸 Brewfile snapshot saved."
    echo "⏱️  Total time: ${duration} seconds"
    echo "------------------------------------------"
}

# Initialize Starship prompt
eval "$(starship init zsh)"

# Display Fastfetch
fastfetch
