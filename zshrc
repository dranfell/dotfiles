source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "modules/history", from:prezto
zplug "zsh-users/zsh-autosuggestions", defer:3
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:1
zplug "zsh-users/zsh-history-substring-search", defer:2

zplug "modules/osx", from:prezto
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
# zplug "modules/environment", from:prezto
# zplug "modules/terminal", from:prezto
# zplug "modules/editor", from:prezto
# zplug "modules/directory", from:prezto
# zplug "modules/spectrum", from:prezto
# zplug "modules/utility", from:prezto
# zplug "modules/completion", from:prezto
# zplug "modules/autosuggestions", from:prezto
# zplug "modules/git", from:prezto
# zplug "modules/homebrew", from:prezto
# zplug "modules/syntax-highlighting", from:prezto
# zplug "modules/history-substring-search", from:prezto
# zplug "modules/prompt", from:prezto

zplug mafredri/zsh-async, from:github
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug "~/.dotfiles/zsh", from:local, use:"*.zsh"

# zplug load --verbose
zplug load
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionexport
PATH="/usr/local/opt/node@12/bin:$PATH"
